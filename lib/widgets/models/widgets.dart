import 'package:dynamic_view/widgets/models/json_converters.dart';
import 'package:flutter/material.dart'
    hide
        Text,
        Image,
        Container,
        Expanded,
        Flexible,
        Positioned,
        Stack,
        Spacer,
        Row,
        Column;
import 'package:json_annotation/json_annotation.dart';

import 'base_widgets.dart';
import 'layouts.dart';

enum WidgetTag {
  // base widgets
  aspectRatio,
  text,
  image,
  button,
  divider,
  container,
  // layout helpers
  expanded,
  flexible,
  spacer,
  positioned,
  // layouts
  gridView,
  row,
  column,
  stack,
}

enum FanbookWidgetTag {
  markdown,
  userAvatar,
  userName,
  channelName,
}

extension WidgetTagExtension on WidgetTag {
  String get name => toString().substring(10);
}

extension FanbookWidgetTagExtension on FanbookWidgetTag {
  String get name => toString().substring(17);
}

typedef WidgetDataParser = WidgetData Function(Map<String, dynamic> json);

@DoubleConverter()
abstract class WidgetData {
  // @formatter:off
  static final Map<String, WidgetDataParser> widgetDataParser = {
    WidgetTag.aspectRatio.name: (d) => AspectRatioData.fromJson(d),
    WidgetTag.text       .name: (d) => TextData.fromJson(d),
    WidgetTag.image      .name: (d) => ImageData.fromJson(d),
    WidgetTag.button     .name: (d) => ButtonData.fromJson(d),
    WidgetTag.container  .name: (d) => ContainerData.fromJson(d),
    WidgetTag.divider    .name: (d) => DividerData.fromJson(d),
    WidgetTag.expanded   .name: (d) => ExpandedData.fromJson(d),
    WidgetTag.flexible   .name: (d) => FlexibleData.fromJson(d),
    WidgetTag.spacer     .name: (d) => SpacerData.fromJson(d),
    WidgetTag.positioned .name: (d) => PositionedData.fromJson(d),
    WidgetTag.row        .name: (d) => RowData.fromJson(d),
    WidgetTag.column     .name: (d) => ColumnData.fromJson(d),
    WidgetTag.stack      .name: (d) => StackData.fromJson(d),
    WidgetTag.gridView   .name: (d) => GridViewData.fromJson(d),
  };
  // @formatter:on

  String tag;
  @JsonKey(fromJson: edgeInsetsFromJson, toJson: edgeInsetsToJson)
  EdgeInsets? padding;

  WidgetData(this.tag, {this.padding});

  factory WidgetData.fromJson(Map<String, dynamic> json) {
    final parser = widgetDataParser[json['tag']];
    if (parser == null) {
      throw Exception('Unknown widget tag: ${json['tag']}');
    }

    return parser(json);
  }

  Map<String, dynamic> toJson();
}

abstract class SingleChildWidget extends WidgetData {
  WidgetData? child;

  SingleChildWidget(String tag, {this.child, EdgeInsets? padding})
      : super(tag, padding: padding);
}

abstract class MultiChildrenWidget extends WidgetData {
  List<WidgetData> children;
  TextStyleData? textStyle;

  MultiChildrenWidget(
    String tag, {
    required this.children,
    this.textStyle,
    EdgeInsets? padding,
  }) : super(tag, padding: padding);
}
