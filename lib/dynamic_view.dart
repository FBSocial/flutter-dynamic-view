library dynamic_view;

import 'package:flutter/widgets.dart';

export 'src/high_level_widgets/scaffold.dart';
export 'src/high_level_widgets/team.dart';
export 'src/model.dart';
export 'widgets/views/widget_views.dart' show DynamicView, DynamicViewBuilder;

class DynamicViewHrefNotification extends Notification {
  final String? href;

  const DynamicViewHrefNotification(this.href);
}
