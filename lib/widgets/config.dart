import 'dart:developer';

import 'package:dynamic_view/src/model.dart';
import 'package:flutter/widgets.dart';

abstract class DynamicViewConfig {
  void onClick(BuildContext context, String? href);

  Map<String, MessageCardKeyModel> extractKeys(BuildContext context);
}

class DefaultDynamicViewConfig extends DynamicViewConfig {
  @override
  void onClick(BuildContext context, String? href) {
    log('onClick $href');
  }

  @override
  Map<String, MessageCardKeyModel> extractKeys(context) {
    throw UnimplementedError();
  }
}
