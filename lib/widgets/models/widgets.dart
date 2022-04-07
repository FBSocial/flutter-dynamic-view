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

part 'widgets.g.dart';

enum WidgetTag {
  // base widgets
  text,
  image,
  button,
  container,
  // layout helpers
  expanded,
  flexible,
  spacer,
  positioned,
  // layouts
  row,
  column,
  stack,
}

@JsonSerializable(createFactory: false)
abstract class Widget {
  WidgetTag tag;

  Widget(this.tag);

  factory Widget.fromJson(Map<String, dynamic> json) {
    final tag = $enumDecode(_$WidgetTagEnumMap, json['tag']);

    switch (tag) {
      case WidgetTag.text:
        return Text.fromJson(json);
      case WidgetTag.image:
        return Image.fromJson(json);
      case WidgetTag.button:
        return Button.fromJson(json);
      case WidgetTag.container:
        return Container.fromJson(json);
      case WidgetTag.expanded:
        return Expanded.fromJson(json);
      case WidgetTag.flexible:
        return Flexible.fromJson(json);
      case WidgetTag.spacer:
        return Spacer();
      case WidgetTag.positioned:
        return Positioned.fromJson(json);
      case WidgetTag.row:
        return Row.fromJson(json);
      case WidgetTag.column:
        return Column.fromJson(json);
      case WidgetTag.stack:
        return Stack.fromJson(json);
    }
  }

  Map<String, dynamic> toJson();
}

abstract class SingleChildWidget extends Widget {
  Widget? child;

  SingleChildWidget(WidgetTag tag, this.child) : super(tag);
}

abstract class MultiChildrenWidget extends Widget {
  List<Widget> children;

  MultiChildrenWidget(WidgetTag tag, {required this.children}) : super(tag);
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

class AlignmentJsonConverter
    extends JsonConverter<Alignment?, Map<String, double>?> {
  const AlignmentJsonConverter();

  @override
  Alignment? fromJson(Map<String, dynamic>? json) {
    if (json == null) return null;
    return Alignment(json['x'] as double, json['y'] as double);
  }

  @override
  Map<String, double>? toJson(Alignment? object) {
    if (object == null) return null;
    return {'x': object.x, 'y': object.y};
  }
}

class RectJsonConverter extends JsonConverter<Rect?, Map<String, double>> {
  const RectJsonConverter();

  @override
  Rect fromJson(Map<String, dynamic> json) {
    return Rect.fromLTWH(json['left'] as double, json['top'] as double,
        json['width'] as double, json['height'] as double);
  }

  @override
  Map<String, double> toJson(Rect? object) {
    return {
      'left': object!.left,
      'top': object.top,
      'width': object.width,
      'height': object.height
    };
  }
}
