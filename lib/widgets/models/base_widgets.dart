// ignore_for_file: hash_and_equals

import 'package:dynamic_view/widgets/models/widgets.dart';
import 'package:dynamic_view/widgets/views/base_widgets.dart';
import 'package:flutter/material.dart' hide Widget;
import 'package:json_annotation/json_annotation.dart';

import 'json_converters.dart';

part 'base_widgets.g.dart';

enum FontWeightData {
  normal,
  medium,
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
@DoubleConverter()
class AspectRatioData extends WidgetData {
  final double ratio;
  final WidgetData child;

  AspectRatioData({
    required this.ratio,
    required this.child,
  }) : super(WidgetTag.aspectRatio.name);

  factory AspectRatioData.fromJson(Map<String, dynamic> json) =>
      _$AspectRatioDataFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$AspectRatioDataToJson(this);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is AspectRatioData && other.ratio == ratio;
  }

  @override
  String toString() => 'AspectRatio(ratio: $ratio)';
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
@DoubleConverter()
@ColorJsonConverter()
class TextStyleData {
  final Color? color;
  final Color? backgroundColor;
  final double? fontSize;
  final FontWeightData? fontWeight;

  // final FontWeight fontWeight;
  // final double letterSpacing;
  // final double wordSpacing;

  const TextStyleData({
    this.color,
    this.backgroundColor,
    this.fontSize,
    this.fontWeight,
    // this.letterSpacing,
    // this.wordSpacing,
  });

  factory TextStyleData.fromJson(Map<String, dynamic> json) =>
      _$TextStyleDataFromJson(json);

  Map<String, dynamic> toJson() => _$TextStyleDataToJson(this);

  TextStyle? toTextStyle() => BaseWidget.textStyleFrom(this);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is TextStyleData &&
        color == other.color &&
        backgroundColor == other.backgroundColor &&
        fontSize == other.fontSize;
  }
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
@DoubleConverter()
class TextData extends WidgetData {
  final String data;

  final TextStyleData? style;
  final TextAlign? textAlign;

  // final TextDirection? textDirection;
  final bool? softWrap;
  final TextOverflow? overflow;
  final int? maxLines;

  TextData(
    this.data, {
    this.style,
    this.textAlign,
    // this.textDirection,
    this.softWrap,
    this.overflow,
    this.maxLines,
    EdgeInsets? padding,
  }) : super(WidgetTag.text.name, padding: padding);

  factory TextData.fromJson(Map<String, dynamic> json) =>
      _$TextDataFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$TextDataToJson(this);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is TextData &&
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
@DoubleConverter()
@AlignmentJsonConverter()
@RectJsonConverter()
class ImageData extends WidgetData {
  final String src;
  final double? width;
  final double? height;
  final BoxFit? fit;
  final Alignment? alignment;
  final ImageRepeat? repeat;
  final Rect? centerSlice;
  final double? radius;

  ImageData(
    this.src, {
    this.width,
    this.height,
    this.fit,
    this.alignment,
    this.repeat,
    this.centerSlice,
    this.radius,
    EdgeInsets? padding,
  }) : super(WidgetTag.image.name, padding: padding);

  factory ImageData.fromJson(Map<String, dynamic> json) =>
      _$ImageDataFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$ImageDataToJson(this);

  @override
  operator ==(Object other) =>
      identical(this, other) ||
      other is ImageData &&
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
  raw,
  text,
  elevated,
  outlined,
}

enum ButtonSize {
  big,
  standard,
  small,
  mini,
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
@DoubleConverter()
@BorderSideConverter()
class ButtonData extends SingleChildWidget {
  final ButtonType? type;
  final ButtonSize? size;
  final String? href;
  final BorderSide? border;

  ButtonData({
    this.type,
    required WidgetData child,
    this.size,
    this.href,
    this.border,
    EdgeInsets? padding,
  }) : super(WidgetTag.button.name, child: child, padding: padding);

  factory ButtonData.fromJson(Map<String, dynamic> json) =>
      _$ButtonDataFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$ButtonDataToJson(this);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is ButtonData &&
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
@DoubleConverter()
@ColorJsonConverter()
class BorderData {
  final Color? color;
  final double? width;
  final double? radius;

  const BorderData({
    this.color,
    this.width,
    this.radius,
  });

  factory BorderData.fromJson(Map<String, dynamic> json) =>
      _$BorderDataFromJson(json);

  Map<String, dynamic> toJson() => _$BorderDataToJson(this);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is BorderData &&
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
@DoubleConverter()
@AlignmentJsonConverter()
@ColorJsonConverter()
class ContainerData extends SingleChildWidget {
  final double? width;
  final double? height;
  final BorderData? border;
  final Alignment? alignment;
  final Color? backgroundColor;

  ContainerData({
    WidgetData? child,
    this.width,
    this.height,
    this.border,
    this.alignment,
    this.backgroundColor,
    EdgeInsets? padding,
  }) : super(WidgetTag.container.name, child: child, padding: padding);

  factory ContainerData.fromJson(Map<String, dynamic> json) =>
      _$ContainerDataFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$ContainerDataToJson(this);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is ContainerData &&
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

@JsonSerializable(explicitToJson: true, includeIfNull: false)
@DoubleConverter()
@ColorJsonConverter()
class DividerData extends WidgetData {
  final double? thickness;
  final Color? color;

  DividerData({
    this.thickness,
    this.color,
  }) : super(WidgetTag.divider.name);

  factory DividerData.fromJson(Map<String, dynamic> json) =>
      _$DividerDataFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$DividerDataToJson(this);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is DividerData &&
        thickness == other.thickness &&
        color == other.color;
  }

  @override
  String toString() {
    return 'Divider{thickness: $thickness, color: $color}';
  }
}
