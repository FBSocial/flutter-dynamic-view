import 'package:dynamic_view/widgets/models/advance_widgets.dart';
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
  channel,
}

@DoubleConverter()
abstract class WidgetData {
  String tag;
  @JsonKey(fromJson: edgeInsetsFromJson, toJson: edgeInsetsToJson)
  EdgeInsets? padding;

  WidgetData(this.tag, {this.padding});

  factory WidgetData.fromJson(Map<String, dynamic> json) {
    switch (json['tag']) {
      case WidgetTag.aspectRatio:
        return AspectRatioData.fromJson(json);
      case WidgetTag.text:
        return TextData.fromJson(json);
      case WidgetTag.image:
        return ImageData.fromJson(json);
      case WidgetTag.button:
        return ButtonData.fromJson(json);
      case WidgetTag.container:
        return ContainerData.fromJson(json);
      case WidgetTag.divider:
        return DividerData.fromJson(json);
      case WidgetTag.expanded:
        return ExpandedData.fromJson(json);
      case WidgetTag.flexible:
        return FlexibleData.fromJson(json);
      case WidgetTag.spacer:
        return SpacerData.fromJson(json);
      case WidgetTag.positioned:
        return PositionedData.fromJson(json);
      case WidgetTag.row:
        return RowData.fromJson(json);
      case WidgetTag.column:
        return ColumnData.fromJson(json);
      case WidgetTag.stack:
        return StackData.fromJson(json);
      case WidgetTag.gridView:
        return GridViewData.fromJson(json);
      case FanbookWidgetTag.markdown:
        return MarkdownData.fromJson(json);
      case FanbookWidgetTag.userAvatar:
        return UserAvatarData.fromJson(json);
      case FanbookWidgetTag.userName:
        return UserNameData.fromJson(json);
      case FanbookWidgetTag.channel:
        return ChannelNameData.fromJson(json);
    }
    throw Exception('Unknown widget tag: ${json['tag']}');
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
