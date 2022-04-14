import 'dart:developer';

import 'package:dynamic_view/widgets/models/base_widgets.dart';
import 'package:dynamic_view/widgets/models/layouts.dart';
import 'package:dynamic_view/widgets/models/widgets.dart';
import 'package:dynamic_view/widgets/views/advance_widgets.dart';
import 'package:dynamic_view/widgets/views/base_widgets.dart';
import 'package:dynamic_view/widgets/views/layout_widgets.dart';
import 'package:flutter/material.dart';

import '../models/advance_widgets.dart';

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

class DynamicView {
  static DynamicViewConfig config = DefaultDynamicViewConfig();

  static Widget fromMap(Map<String, dynamic> map) {
    return fromData(WidgetData.fromJson(map));
  }

  static Widget fromData(WidgetData data) {
    Widget widget = _fromData(data);
    if (data.padding != null) {
      widget = Padding(
        padding: data.padding!,
        child: widget,
      );
    }
    if (data is MultiChildrenWidget) {
      if (data.textStyle != null) {
        widget = DefaultTextStyle(
          style: BaseWidget.textStyleFrom(data.textStyle)!,
          child: widget,
        );
      }
    }
    return widget;
  }

  static Widget _fromData(WidgetData data) {
    switch (data.tag) {
      // 基本组件
      case WidgetTag.aspectRatio:
        return BaseWidget.aspectRatioFrom(data as AspectRatioData);
      case WidgetTag.text:
        return BaseWidget.textFrom(data as TextData);

      case WidgetTag.image:
        return BaseWidget.imageFrom(data as ImageData);

      case WidgetTag.button:
        return BaseWidget.buttonFrom(data as ButtonData);

      case WidgetTag.container:
        return BaseWidget.containerFrom(data as ContainerData);

      case WidgetTag.divider:
        return BaseWidget.dividerFrom(data as DividerData);
      // 布局组件
      case WidgetTag.expanded:
        return LayoutWidgets.expandedFrom(data as ExpandedData);

      case WidgetTag.flexible:
        return LayoutWidgets.flexibleFrom(data as FlexibleData);

      case WidgetTag.spacer:
        return LayoutWidgets.spacerFrom(data as SpacerData);

      case WidgetTag.positioned:
        return LayoutWidgets.positionedFrom(data as PositionedData);

      case WidgetTag.row:
        return LayoutWidgets.rowFrom(data as RowData);

      case WidgetTag.column:
        return LayoutWidgets.columnFrom(data as ColumnData);

      case WidgetTag.stack:
        return LayoutWidgets.stackFrom(data as StackData);

      case WidgetTag.gridView:
        return LayoutWidgets.gridViewFrom(data as GridViewData);
      // 高级组件
      case WidgetTag.markdown:
        return AdvanceWidgets.markdownFrom(data as MarkdownData);
      case WidgetTag.userAvatar:
        return AdvanceWidgets.userAvatarFrom(data as UserAvatarData);
      case WidgetTag.userName:
        return AdvanceWidgets.userNameFrom(data as UserNameData);
      case WidgetTag.channel:
        return AdvanceWidgets.channelFrom(data as ChannelNameData);
    }
  }
}
