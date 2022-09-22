import 'package:dynamic_view/dynamic_view.dart';
import 'package:dynamic_view/src/string_extension.dart';
import 'package:dynamic_view/widgets/models/advance_widgets.dart';
import 'package:dynamic_view/widgets/models/base_widgets.dart';
import 'package:dynamic_view/widgets/models/layouts.dart';
import 'package:dynamic_view/widgets/models/widgets.dart';
import 'package:flutter/material.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:url_launcher/url_launcher.dart';

part 'team.g.dart';

const kMaxAvatars = 5;
const kKeyReversedStartFrom = 97;
const kKeyDissolved = '99';
const kKeyStarted = '98';
const kKeyNoSeat = '97';

Uri _appendQuery(Uri uri, Map<String, String> query) {
  final newQuery = Map<String, String>.from(uri.queryParameters);
  newQuery.addAll(query);
  return uri.replace(queryParameters: newQuery);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class TeamData {
  final String header;
  final String cover;
  final String gameUrl;
  final String? playAgainUrl;
  final String? fallbackUrl;
  final String? annotation;

  TeamData({
    required this.header,
    required this.cover,
    required this.gameUrl,
    this.playAgainUrl,
    this.fallbackUrl,
    this.annotation,
  });

  factory TeamData.fromJson(Map<String, dynamic> json) =>
      _$TeamDataFromJson(json);

  Map<String, dynamic> toJson() => _$TeamDataToJson(this);
}

class Team extends StatelessWidget {
  final TeamData data;

  final Map<String, String> Function() extraQueries;

  const Team(this.data, {Key? key, required this.extraQueries})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          // 游戏标题
          Text(
            data.header.breakWord,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style:
                TextStyle(color: Theme.of(context).primaryColor, fontSize: 16),
          ), // 用户头像有 2pt 边框，加起来有 12 间隔
          const SizedBox(height: 10), // 玩家头像列表 & 游戏状态
          SizedBox(
            height: 24,
            child: Row(
              children: [
                Expanded(child: _buildUserInfoList(context)),
                _buildStateText(context),
              ],
            ),
          ), // 用户头像有 2pt 边框，加起来有 12 间隔
          const SizedBox(height: 10), // 游戏封面
          Stack(
            children: [
              AspectRatio(
                aspectRatio: 470 / 264,
                child: DynamicView.fromData(ImageData(
                  data.cover,
                  fit: BoxFit.cover,
                  radius: 4,
                )),
              ),
              // 标注文本，例如房间号
              if (data.annotation != null)
                Positioned(
                  bottom: 0,
                  left: 0,
                  right: 0,
                  child: Container(
                    height: 40,
                    padding: const EdgeInsets.all(8),
                    alignment: Alignment.bottomLeft,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                            Colors.black.withOpacity(0),
                            Colors.black.withOpacity(0.2),
                          ]),
                    ),
                    child: Text(
                      data.annotation!.breakWord,
                      overflow: TextOverflow.ellipsis,
                      maxLines: 1,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                        shadows: [
                          Shadow(
                            color: Colors.black.withOpacity(0.5),
                            offset: const Offset(0.5, 0.5),
                            blurRadius: 1,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
            ],
          ),

          _buildButton(context)
        ],
      ),
    );
  }

  Widget _buildButton(BuildContext context) {
    BorderSide? border;
    ButtonType buttonType;
    String buttonLabel;
    Uri? href;
    final keys = DynamicView.config.extractKeys(context);

    String? _hasAnyKeyMySelf() {
      for (final entry in keys.entries) {
        if (entry.value.me) {
          return entry.key;
        }
      }
      return null;
    }

    if (keys.containsKey(kKeyDissolved) && keys[kKeyDissolved]!.count > 0) {
      // 用户没有配置再来一局
      if (data.playAgainUrl == null) return const SizedBox();
      buttonType = ButtonType.outlined;
      buttonLabel = "再来一局";
      href = _appendQuery(Uri.parse(data.playAgainUrl!), extraQueries());
    } else if (keys.containsKey(kKeyNoSeat) && keys[kKeyNoSeat]!.count > 0) {
      buttonType = ButtonType.outlined;
      buttonLabel = "队伍已满";
    } else if (keys.containsKey(kKeyStarted) && keys[kKeyStarted]!.count > 0) {
      return const SizedBox();
    } else {
      if (_hasAnyKeyMySelf() != null) {
        buttonType = ButtonType.outlined;
        border = BorderSide(color: Theme.of(context).primaryColor, width: 0.5);
        buttonLabel = "进入游戏";
      } else {
        buttonType = ButtonType.elevated;
        buttonLabel = "立即加入";
      }
      href = _appendQuery(Uri.parse(data.gameUrl), extraQueries());
    }

    void launchGame() async {
      if (href!.scheme == 'http' ||
          href.scheme == 'https' ||
          href.scheme == 'fanbook') {
        DynamicViewHrefNotification(href.toString()).dispatch(context);
      } else {
        if (!await launchUrl(href)) {
          if (data.fallbackUrl != null) {
            DynamicViewHrefNotification(data.fallbackUrl!).dispatch(context);
          }
        }
      }
    }

    if (buttonType == ButtonType.outlined) {
      return OutlinedButton(
          style: OutlinedButton.styleFrom(side: border),
          onPressed: href == null ? null : launchGame,
          child: Text(buttonLabel));
    } else {
      return ElevatedButton(onPressed: launchGame, child: Text(buttonLabel));
    }
  }

  Widget _avatarWrapper(Widget child) {
    return Container(
        width: 28,
        height: 28,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(14),
            border: Border.all(color: Colors.white, width: 2)),
        child: child);
  }

  Widget _buildUserInfoList(BuildContext context) {
    final keys = DynamicView.config
        .extractKeys(context)
        .entries
        .where((e) =>
            int.parse(e.key) < kKeyReversedStartFrom &&
            e.value.count > 0 &&
            e.value.userId != null)
        .map((e) => e.value)
        .toList(growable: false);
    final buildAvatar =
        DynamicView.getBuilder(FanbookWidgetTag.userAvatar.name)!;
    return Wrap(
      spacing: -10,
      children: [
        ...keys
            .take(5)
            .map((e) => _avatarWrapper(
                buildAvatar(UserAvatarData(e.userId!, size: 24))))
            .toList(growable: false),
        if (keys.length > kMaxAvatars)
          _avatarWrapper(Container(
            width: 24,
            height: 24,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: Theme.of(context).scaffoldBackgroundColor,
            ),
            alignment: Alignment.center,
            // 如果不左移 0.5pt，视觉上会没有居中，设计图也是左移了
            child: Transform(
              transform: Matrix4.translationValues(-0.5, 0, 0),
              child: Text(
                "+${keys.length - kMaxAvatars}",
                style: TextStyle(
                    fontSize: 11, color: Theme.of(context).iconTheme.color),
              ),
            ),
          )),
      ],
    );
  }

  Widget _buildStateText(BuildContext context) {
    const disabledColor = Color(0xFF8D93A6);
    return DynamicView.getBuilder(FanbookWidgetTag.keySet.name)!(KeySetData(
      key: kKeyDissolved,
      anyone: true,
      yes: TextData(
        "已解散",
        style: const TextStyleData(color: disabledColor, fontSize: 14),
      ),
      no: KeySetData(
        key: kKeyStarted,
        anyone: true,
        yes: TextData(
          "已开始",
          style: const TextStyleData(color: disabledColor, fontSize: 14),
        ),
        no: KeySetData(
            key: kKeyNoSeat,
            anyone: true,
            yes: TextData(
              "队伍已满",
              style: const TextStyleData(color: disabledColor, fontSize: 14),
            ),
            no: TextData(
              "组队中",
              style: TextStyleData(
                  color: Theme.of(context).primaryColor, fontSize: 14),
            )),
      ),
    ));
  }
}
