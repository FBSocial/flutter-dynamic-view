// ignore_for_file: hash_and_equals

import 'package:dynamic_view/widgets/models/widgets.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart' hide Widget;
import 'package:json_annotation/json_annotation.dart';

import 'base_widgets.dart';

part 'layouts.g.dart';

@JsonSerializable(explicitToJson: true, includeIfNull: false)
@DoubleConverter()
class ExpandedData extends SingleChildWidget {
  final int? flex;

  ExpandedData({this.flex, required WidgetData child})
      : super(WidgetTag.expanded, child: child);

  factory ExpandedData.fromJson(Map<String, dynamic> json) =>
      _$ExpandedDataFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$ExpandedDataToJson(this);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is ExpandedData && child == other.child;
  }

  @override
  String toString() {
    return 'Expanded{child: $child}';
  }
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
@DoubleConverter()
class FlexibleData extends SingleChildWidget {
  final int? flex;

  FlexibleData({
    required WidgetData child,
    this.flex,
  }) : super(WidgetTag.flexible, child: child);

  factory FlexibleData.fromJson(Map<String, dynamic> json) =>
      _$FlexibleDataFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$FlexibleDataToJson(this);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is FlexibleData && flex == other.flex && child == other.child;
  }

  @override
  String toString() {
    return 'Flexible($flex, $child)';
  }
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
@DoubleConverter()
class SpacerData extends WidgetData {
  int? flex;

  SpacerData({this.flex}) : super(WidgetTag.spacer);

  factory SpacerData.fromJson(Map<String, dynamic> json) =>
      _$SpacerDataFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$SpacerDataToJson(this);

  @override
  bool operator ==(Object other) {
    return other is SpacerData;
  }

  @override
  String toString() {
    return 'Spacer()';
  }
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
@DoubleConverter()
class RowData extends MultiChildrenWidget {
  @JsonKey(name: "hAlign")
  final MainAxisAlignment? mainAxisAlignment;
  @JsonKey(name: "size")
  final MainAxisSize? mainAxisSize;
  @JsonKey(name: "vAlign")
  final CrossAxisAlignment? crossAxisAlignment;

  RowData({
    this.mainAxisAlignment,
    this.mainAxisSize,
    this.crossAxisAlignment,
    TextStyleData? textStyle,
    EdgeInsets? padding,
    required List<WidgetData> children,
  }) : super(WidgetTag.row,
            children: children, padding: padding, textStyle: textStyle);

  factory RowData.fromJson(Map<String, dynamic> json) =>
      _$RowDataFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$RowDataToJson(this);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is RowData &&
        mainAxisAlignment == other.mainAxisAlignment &&
        mainAxisSize == other.mainAxisSize &&
        crossAxisAlignment == other.crossAxisAlignment &&
        listEquals(children, other.children);
  }

  @override
  String toString() {
    return 'Row{mainAxisAlignment: $mainAxisAlignment, mainAxisSize: $mainAxisSize, crossAxisAlignment: $crossAxisAlignment, children: $children}';
  }
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
@DoubleConverter()
class ColumnData extends MultiChildrenWidget {
  @JsonKey(name: "vAlign")
  final MainAxisAlignment? mainAxisAlignment;
  @JsonKey(name: "size")
  final MainAxisSize? mainAxisSize;
  @JsonKey(name: "hAlign")
  final CrossAxisAlignment? crossAxisAlignment;

  ColumnData({
    this.mainAxisAlignment,
    this.mainAxisSize,
    this.crossAxisAlignment,
    EdgeInsets? padding,
    TextStyleData? textStyle,
    required List<WidgetData> children,
  }) : super(WidgetTag.column,
            children: children, padding: padding, textStyle: textStyle);

  factory ColumnData.fromJson(Map<String, dynamic> json) =>
      _$ColumnDataFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$ColumnDataToJson(this);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is ColumnData &&
        mainAxisAlignment == other.mainAxisAlignment &&
        mainAxisSize == other.mainAxisSize &&
        crossAxisAlignment == other.crossAxisAlignment &&
        listEquals(children, other.children);
  }

  @override
  String toString() {
    return 'Column{mainAxisAlignment: $mainAxisAlignment, mainAxisSize: $mainAxisSize, crossAxisAlignment: $crossAxisAlignment, children: $children}';
  }
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
@DoubleConverter()
class PositionedData extends SingleChildWidget {
  final double? top;
  final double? right;
  final double? bottom;
  final double? left;
  final double? width;
  final double? height;

  PositionedData({
    required WidgetData child,
    this.top,
    this.right,
    this.bottom,
    this.left,
    this.width,
    this.height,
  }) : super(WidgetTag.positioned, child: child);

  factory PositionedData.fromJson(Map<String, dynamic> json) =>
      _$PositionedDataFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$PositionedDataToJson(this);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is PositionedData &&
        top == other.top &&
        right == other.right &&
        bottom == other.bottom &&
        left == other.left &&
        width == other.width &&
        height == other.height &&
        child == other.child;
  }

  @override
  String toString() {
    return 'Positioned{top: $top, right: $right, bottom: $bottom, left: $left, width: $width, height: $height, child: $child}';
  }
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
@DoubleConverter()
@AlignmentJsonConverter()
class StackData extends MultiChildrenWidget {
  final Alignment? alignment;

  StackData({
    this.alignment,
    required List<WidgetData> children,
    EdgeInsets? padding,
    TextStyleData? textStyle,
  }) : super(WidgetTag.stack,
            children: children, padding: padding, textStyle: textStyle);

  factory StackData.fromJson(Map<String, dynamic> json) =>
      _$StackDataFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$StackDataToJson(this);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is StackData &&
        alignment == other.alignment &&
        listEquals(children, other.children);
  }

  @override
  String toString() {
    return 'Stack{alignment: $alignment, children: $children}';
  }
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
@DoubleConverter()
class GridViewData extends MultiChildrenWidget {
  final Axis? scrollDirection;
  final int crossAxisCount;
  final double? mainAxisSpacing;
  final double? crossAxisSpacing;
  final double? childAspectRatio;
  final bool? shrikWrap;

  GridViewData({
    required this.crossAxisCount,
    this.scrollDirection,
    this.mainAxisSpacing,
    this.crossAxisSpacing,
    this.childAspectRatio,
    this.shrikWrap,
    EdgeInsets? padding,
    TextStyleData? textStyle,
    required List<WidgetData> children,
  }) : super(WidgetTag.gridView,
            children: children, padding: padding, textStyle: textStyle);

  factory GridViewData.fromJson(Map<String, dynamic> json) =>
      _$GridViewDataFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$GridViewDataToJson(this);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is GridViewData &&
        scrollDirection == other.scrollDirection &&
        crossAxisCount == other.crossAxisCount &&
        mainAxisSpacing == other.mainAxisSpacing &&
        crossAxisSpacing == other.crossAxisSpacing &&
        childAspectRatio == other.childAspectRatio &&
        listEquals(children, other.children);
  }

  @override
  String toString() {
    return 'GridView{scrollDirection: $scrollDirection, crossAxisCount: $crossAxisCount, mainAxisSpacing: $mainAxisSpacing, crossAxisSpacing: $crossAxisSpacing, childAspectRatio: $childAspectRatio, children: $children}';
  }
}
