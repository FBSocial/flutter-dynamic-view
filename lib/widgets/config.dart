import 'dart:developer';

import 'package:dynamic_view/widgets/models/advance_widgets.dart';
import 'package:flutter/widgets.dart';

abstract class DynamicViewConfig {
  Widget markdownBuilder(Object? data);

  void onClick(BuildContext context, String? href);

  Widget userAvatarBuilder(UserAvatarData data);

  Widget userNameBuilder(UserNameData data);

  Widget channelBuilder(ChannelNameData data);
}

class DefaultDynamicViewConfig extends DynamicViewConfig {
  @override
  void onClick(BuildContext context, String? href) {
    log('onClick $href');
  }

  @override
  noSuchMethod(Invocation invocation) => super.noSuchMethod(invocation);
}
