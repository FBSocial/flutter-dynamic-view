import 'dart:developer';

import 'package:flutter/widgets.dart';

abstract class DynamicViewConfig {
  void onClick(BuildContext context, String? href);
}

class DefaultDynamicViewConfig extends DynamicViewConfig {
  @override
  void onClick(BuildContext context, String? href) {
    log('onClick $href');
  }
}
