// ignore_for_file: lines_longer_than_80_chars

import 'package:dynamic_view/widgets/models/base_widgets.dart';
import 'package:dynamic_view/widgets/models/layouts.dart';
import 'package:dynamic_view/widgets/models/widgets.dart';
import 'package:dynamic_view/widgets/views/base_widgets.dart';
import 'package:dynamic_view/widgets/views/layout_widgets.dart';
import 'package:flutter/material.dart';

import '../config.dart';

typedef DynamicViewBuilder = Widget Function(WidgetData);

class DynamicView {
  DynamicView._();

  // @formatter:off
  static final Map<String, DynamicViewBuilder> _widgetBuilder = {
    WidgetTag.aspectRatio.name: (d) => BaseWidget.aspectRatioFrom(d as AspectRatioData),
    WidgetTag.text       .name: (d) => BaseWidget.textFrom(d as TextData),
    WidgetTag.image      .name: (d) => BaseWidget.imageFrom(d as ImageData),
    WidgetTag.button     .name: (d) => BaseWidget.buttonFrom(d as ButtonData),
    WidgetTag.container  .name: (d) => BaseWidget.containerFrom(d as ContainerData),
    WidgetTag.divider    .name: (d) => BaseWidget.dividerFrom(d as DividerData),
    WidgetTag.expanded   .name: (d) => LayoutWidgets.expandedFrom(d as ExpandedData),
    WidgetTag.flexible   .name: (d) => LayoutWidgets.flexibleFrom(d as FlexibleData),
    WidgetTag.spacer     .name: (d) => LayoutWidgets.spacerFrom(d as SpacerData),
    WidgetTag.positioned .name: (d) => LayoutWidgets.positionedFrom(d as PositionedData),
    WidgetTag.row        .name: (d) => LayoutWidgets.rowFrom(d as RowData),
    WidgetTag.column     .name: (d) => LayoutWidgets.columnFrom(d as ColumnData),
    WidgetTag.stack      .name: (d) => LayoutWidgets.stackFrom(d as StackData),
    WidgetTag.gridView   .name: (d) => LayoutWidgets.gridViewFrom(d as GridViewData),
  };
  // @formatter:on

  /// register a tag, or overwrite existing view builder and data parser.
  static void registerTag(
    String tag, {
    required DynamicViewBuilder builder,
    required WidgetDataParser parser,
  }) {
    DynamicView._widgetBuilder[tag] = builder;
    WidgetData.widgetDataParser[tag] = parser;
  }

  static Widget fromMap(Map<String, dynamic> map) {
    return fromData(WidgetData.fromJson(map));
  }

  static Widget fromData(WidgetData data) {
    final builder = _widgetBuilder[data.tag];
    if (builder == null) {
      throw Exception('No builder function for tag: ${data.tag}');
    }

    Widget widget = builder(data);
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

  static DynamicViewConfig config = DefaultDynamicViewConfig();
}
