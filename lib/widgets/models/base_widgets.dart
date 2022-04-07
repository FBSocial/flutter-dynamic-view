// ignore_for_file: hash_and_equals

import 'package:dynamic_view/widgets/models/widgets.dart';
import 'package:flutter/material.dart' hide Widget;
import 'package:json_annotation/json_annotation.dart';

part 'base_widgets.g.dart';

@JsonSerializable(explicitToJson: true, includeIfNull: false)
@ColorJsonConverter()
class TextStyle {
  final Color? color;
  final Color? backgroundColor;
  final int? fontSize;

  // final FontWeight fontWeight;
  // final double letterSpacing;
  // final double wordSpacing;

  const TextStyle({
    this.color,
    this.backgroundColor,
    this.fontSize,

    // this.fontWeight,
    // this.letterSpacing,
    // this.wordSpacing,
  });

  factory TextStyle.fromJson(Map<String, dynamic> json) =>
      _$TextStyleFromJson(json);

  Map<String, dynamic> toJson() => _$TextStyleToJson(this);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is TextStyle &&
        color == other.color &&
        backgroundColor == other.backgroundColor &&
        fontSize == other.fontSize;
  }
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class Text extends Widget {
  final String data;

  final TextStyle? style;
  final TextAlign? textAlign;

  // final TextDirection? textDirection;
  final bool? softWrap;
  final TextOverflow? overflow;
  final int? maxLines;

  Text(
    this.data, {
    this.style,
    this.textAlign,
    // this.textDirection,
    this.softWrap,
    this.overflow,
    this.maxLines,
  }) : super(WidgetTag.text);

  factory Text.fromJson(Map<String, dynamic> json) => _$TextFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$TextToJson(this);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is Text &&
        data == other.data &&
        style == other.style &&
        textAlign == other.textAlign &&
        // textDirection == other.textDirection &&
        softWrap == other.softWrap &&
        overflow == other.overflow &&
        maxLines == other.maxLines;
  }

  @override
  String toString() {
    return 'Text{data: $data, style: $style, textAlign: $textAlign, softWrap: $softWrap, overflow: $overflow, maxLines: $maxLines}';
  }
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
@AlignmentJsonConverter()
@RectJsonConverter()
class Image extends Widget {
  final String src;
  final double? width;
  final double? height;
  final BoxFit? fit;
  final Alignment? alignment;
  final ImageRepeat repeat;
  final Rect? centerSlice;

  Image(
    this.src, {
    this.width,
    this.height,
    this.fit,
    Alignment? alignment,
    this.repeat = ImageRepeat.noRepeat,
    this.centerSlice,
  })  : alignment = alignment ?? Alignment.center,
        super(WidgetTag.image);

  factory Image.fromJson(Map<String, dynamic> json) => _$ImageFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$ImageToJson(this);

  @override
  operator ==(Object other) =>
      identical(this, other) ||
      other is Image &&
          runtimeType == other.runtimeType &&
          src == other.src &&
          width == other.width &&
          height == other.height &&
          fit == other.fit &&
          alignment == other.alignment &&
          repeat == other.repeat &&
          centerSlice == other.centerSlice;

  @override
  String toString() {
    return 'Image{src: $src, width: $width, height: $height, fit: $fit, alignment: $alignment, repeat: $repeat, centerSlice: $centerSlice}';
  }
}

enum ButtonType {
  text,
  elevated,
  outlined,
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class Button extends SingleChildWidget {
  final ButtonType type;
  final String? href;

  Button({
    this.type = ButtonType.outlined,
    required Widget child,
    this.href,
  }) : super(WidgetTag.button, child);

  factory Button.fromJson(Map<String, dynamic> json) => _$ButtonFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$ButtonToJson(this);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is Button &&
        type == other.type &&
        href == other.href &&
        child == other.child;
  }

  @override
  String toString() {
    return 'Button{type: $type, href: $href, child: $child}';
  }
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
@ColorJsonConverter()
class Border {
  final Color? color;
  final double? width;
  final double? radius;

  const Border({
    this.color,
    this.width,
    this.radius,
  });

  factory Border.fromJson(Map<String, dynamic> json) => _$BorderFromJson(json);

  Map<String, dynamic> toJson() => _$BorderToJson(this);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is Border &&
        color == other.color &&
        width == other.width &&
        radius == other.radius;
  }

  @override
  String toString() {
    return 'Border{color: $color, width: $width, radius: $radius}';
  }
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
@AlignmentJsonConverter()
@ColorJsonConverter()
class Container extends SingleChildWidget {
  final double? width;
  final double? height;
  final Border? border;
  final Alignment? alignment;
  final Color? backgroundColor;

  Container({
    Widget? child,
    this.width,
    this.height,
    this.border,
    this.alignment,
    this.backgroundColor,
  }) : super(WidgetTag.container, child);

  factory Container.fromJson(Map<String, dynamic> json) =>
      _$ContainerFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$ContainerToJson(this);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is Container &&
        width == other.width &&
        height == other.height &&
        border == other.border &&
        alignment == other.alignment &&
        backgroundColor == other.backgroundColor &&
        child == other.child;
  }

  @override
  String toString() {
    return 'Container{width: $width, height: $height, border: $border, alignment: $alignment, backgroundColor: $backgroundColor, child: $child}';
  }
}
