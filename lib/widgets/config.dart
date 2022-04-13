import 'dart:developer';

abstract class DynamicViewConfig {
  void onClick(String? href);
}

class DefaultDynamicViewConfig extends DynamicViewConfig {
  @override
  void onClick(String? href) {
    log('onClick $href');
  }
}
