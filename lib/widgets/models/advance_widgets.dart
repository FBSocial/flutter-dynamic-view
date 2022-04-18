// ignore_for_file: hash_and_equals

import 'package:dynamic_view/widgets/models/base_widgets.dart';
import 'package:dynamic_view/widgets/models/json_converters.dart';
import 'package:dynamic_view/widgets/models/widgets.dart';
import 'package:json_annotation/json_annotation.dart';

part 'advance_widgets.g.dart';

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class UserAvatarData extends WidgetData {
  final String userId;
  final double? size;

  UserAvatarData(this.userId, {this.size})
      : super(FanbookWidgetTag.userAvatar.name);

  factory UserAvatarData.fromJson(Map<String, dynamic> json) =>
      _$UserAvatarDataFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$UserAvatarDataToJson(this);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is UserAvatarData && other.userId == userId;
  }

  @override
  String toString() {
    return 'UserAvatar{userId: $userId}';
  }
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class UserNameData extends WidgetData {
  final String userId;
  final TextStyleData? style;

  UserNameData(this.userId, {this.style})
      : super(FanbookWidgetTag.userName.name);

  factory UserNameData.fromJson(Map<String, dynamic> json) =>
      _$UserNameDataFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$UserNameDataToJson(this);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is UserNameData && other.userId == userId;
  }

  @override
  String toString() {
    return 'UserName{userId: $userId}';
  }
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class ChannelNameData extends WidgetData {
  final String id;
  final TextStyleData? style;

  ChannelNameData(this.id, {this.style}) : super(FanbookWidgetTag.channel.name);

  factory ChannelNameData.fromJson(Map<String, dynamic> json) =>
      _$ChannelNameDataFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$ChannelNameDataToJson(this);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is ChannelNameData && other.id == id;
  }

  @override
  String toString() {
    return 'Channel{id: $id}';
  }
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class MarkdownData extends WidgetData {
  final String data;
  final bool? shrinkWrap;

  MarkdownData(this.data, {this.shrinkWrap})
      : super(FanbookWidgetTag.markdown.name);

  factory MarkdownData.fromJson(Map<String, dynamic> json) =>
      _$MarkdownDataFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$MarkdownDataToJson(this);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is MarkdownData && other.data == data;
  }

  @override
  String toString() {
    return 'Markdown{data: $data}';
  }
}
