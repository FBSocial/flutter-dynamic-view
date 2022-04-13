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

import 'advance_widgets.dart';
import 'base_widgets.dart';
import 'helper.dart';
import 'layouts.dart';

part 'widgets.g.dart';

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
  // advance
  markdown,
}

@JsonSerializable(createFactory: false)
@DoubleConverter()
abstract class WidgetData {
  WidgetTag tag;
  @JsonKey(fromJson: edgeInsetsFromJson, toJson: edgeInsetsToJson)
  EdgeInsets? padding;

  WidgetData(this.tag, {this.padding});

  factory WidgetData.fromJson(Map<String, dynamic> json) {
    final tag = $enumDecode(_$WidgetTagEnumMap, json['tag']);

    switch (tag) {
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
      case WidgetTag.markdown:
        return MarkdownData.fromJson(json);
    }
  }

  Map<String, dynamic> toJson();
}

abstract class SingleChildWidget extends WidgetData {
  WidgetData? child;

  SingleChildWidget(WidgetTag tag, {this.child, EdgeInsets? padding})
      : super(tag, padding: padding);
}

abstract class MultiChildrenWidget extends WidgetData {
  List<WidgetData> children;
  TextStyleData? textStyle;

  MultiChildrenWidget(
    WidgetTag tag, {
    required this.children,
    this.textStyle,
    EdgeInsets? padding,
  }) : super(tag, padding: padding);
}

// Json Convert ---------------------------------------------------------------
class ColorJsonConverter extends JsonConverter<Color?, String?> {
  const ColorJsonConverter();

  @override
  Color? fromJson(String? json) {
    if (json == null) return null;

    json = json.replaceAll('#', '');
    if (json.length == 6) {
      json = 'ff' + json;
    }
    if (json.length == 8) {
      return Color(int.parse('0x$json'));
    }
    return null;
  }

  @override
  String? toJson(Color? object) {
    if (object == null) return null;
    // color to hex
    var outData = object.value.toRadixString(16);
    if (object.alpha == 255) {
      outData = outData.substring(2);
    }
    return outData;
  }
}

class AlignmentJsonConverter extends JsonConverter<Alignment?, String?> {
  const AlignmentJsonConverter();

  @override
  Alignment? fromJson(String? json) {
    if (json == null) return null;
    final values = json.split(',');
    if (values.length == 1) {
      final val = double.parse(values.single);
      return Alignment(val, val);
    }

    return Alignment(double.parse(values.first), double.parse(values.last));
  }

  @override
  String? toJson(Alignment? object) {
    if (object == null) return null;
    if (object.x == object.y) {
      return object.x.toString();
    } else {
      return '${double2str(object.x)},${double2str(object.y)}';
    }
  }
}

class RectJsonConverter extends JsonConverter<Rect?, String?> {
  const RectJsonConverter();

  @override
  Rect? fromJson(String? json) {
    if (json == null) return null;
    final values = json.split(',');

    return Rect.fromLTWH(
      double.parse(values[0]),
      double.parse(values[1]),
      double.parse(values[2]),
      double.parse(values[3]),
    );
  }

  @override
  String? toJson(Rect? object) {
    if (object == null) return null;
    return '${double2str(object.left)},${double2str(object.top)},${double2str(object.width)},${double2str(object.height)}';
  }
}

EdgeInsets? edgeInsetsFromJson(String? json) {
  if (json == null || json.isEmpty) return null;
  final arr = json.split(",").map((e) => double.parse(e)).toList();
  if (arr.length == 1) {
    return EdgeInsets.all(arr.single);
  }
  if (arr.length == 2) {
    return EdgeInsets.symmetric(vertical: arr.first, horizontal: arr.last);
  }
  if (arr.length == 4) {
    return EdgeInsets.fromLTRB(arr[0], arr[1], arr[2], arr[3]);
  }
  return null;
}

String? edgeInsetsToJson(EdgeInsets? object) {
  if (object == null) return null;
  return "${double2str(object.left)},${double2str(object.top)},${double2str(object.right)},${double2str(object.bottom)}";
}

class BorderSideConverter extends JsonConverter<BorderSide?, String?> {
  const BorderSideConverter();

  @override
  BorderSide? fromJson(String? json) {
    if (json == null) return null;
    final values = json.split(',');
    if (values.length == 1) {
      final val = double.parse(values.single);
      return BorderSide(width: val);
    }

    return BorderSide(
      color: const ColorJsonConverter().fromJson(values[1])!,
      width: double.parse(values[0]),
    );
  }

  @override
  String? toJson(BorderSide? object) {
    if (object == null) return null;
    return '${double2str(object.width)},${const ColorJsonConverter().toJson(object.color)}';
  }
}

class DoubleConverter extends JsonConverter<double?, String?> {
  const DoubleConverter();

  @override
  double? fromJson(String? json) {
    if (json == null) return null;
    return double.parse(json);
  }

  @override
  String? toJson(double? object) {
    if (object == null) return null;
    return double2str(object);
  }
}