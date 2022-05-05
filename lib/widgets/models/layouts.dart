// ignore_for_file: hash_and_equals

import 'package:dynamic_view/widgets/models/widgets.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart' hide Widget;
import 'package:json_annotation/json_annotation.dart';

import 'base_widgets.dart';
import 'json_converters.dart';

part 'layouts.g.dart';

@JsonSerializable(explicitToJson: true, includeIfNull: false)
@DoubleOrNullConverter()
@DoubleConverter()
class RowData extends MultiChildrenWidget {
  final MainAxisAlignment? mainAxisAlignment;
  @JsonKey(name: "size")
  final MainAxisSize? mainAxisSize;
  final CrossAxisAlignment? crossAxisAlignment;

  RowData({
    this.mainAxisAlignment,
    this.mainAxisSize,
    this.crossAxisAlignment,
    required List<WidgetData> children,
    TextStyleData? textStyle,
    EdgeInsets? padding,
    String? flex,
  }) : super(
          WidgetTag.row.name,
          children: children,
          padding: padding,
          textStyle: textStyle,
          flex: flex,
        );

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
@DoubleOrNullConverter()
@DoubleConverter()
class ColumnData extends MultiChildrenWidget {
  final MainAxisAlignment? mainAxisAlignment;
  @JsonKey(name: "size")
  final MainAxisSize? mainAxisSize;
  final CrossAxisAlignment? crossAxisAlignment;

  ColumnData({
    this.mainAxisAlignment,
    this.mainAxisSize,
    this.crossAxisAlignment,
    required List<WidgetData> children,
    EdgeInsets? padding,
    TextStyleData? textStyle,
    String? flex,
  }) : super(
          WidgetTag.column.name,
          children: children,
          padding: padding,
          textStyle: textStyle,
          flex: flex,
        );

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
@DoubleOrNullConverter()
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
  }) : super(WidgetTag.positioned.name, child: child);

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
@DoubleOrNullConverter()
@DoubleConverter()
@AlignmentJsonConverter()
class StackData extends MultiChildrenWidget {
  final Alignment? alignment;

  StackData({
    this.alignment,
    required List<WidgetData> children,
    EdgeInsets? padding,
    TextStyleData? textStyle,
  }) : super(WidgetTag.stack.name,
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
@DoubleOrNullConverter()
@DoubleConverter()
class GridViewData extends MultiChildrenWidget {
  @JsonKey(name: 'direction')
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
  }) : super(WidgetTag.gridView.name,
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

@JsonSerializable(explicitToJson: true, includeIfNull: false)
@DoubleOrNullConverter()
@DoubleConverter()
class WrapData extends MultiChildrenWidget {
  final Axis? direction;
  final WrapAlignment? alignment;
  final double? spacing;
  final WrapAlignment? runAlignment;
  final double? runSpacing;
  final WrapCrossAlignment? crossAxisAlignment;
  final VerticalDirection? verticalDirection;

  WrapData({
    this.direction,
    this.alignment,
    this.spacing,
    this.runAlignment,
    this.runSpacing,
    this.crossAxisAlignment,
    this.verticalDirection,
    EdgeInsets? padding,
    TextStyleData? textStyle,
    required List<WidgetData> children,
  }) : super(WidgetTag.wrap.name,
            children: children, padding: padding, textStyle: textStyle);

  factory WrapData.fromJson(Map<String, dynamic> json) =>
      _$WrapDataFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$WrapDataToJson(this);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is WrapData &&
        direction == other.direction &&
        alignment == other.alignment &&
        spacing == other.spacing &&
        runAlignment == other.runAlignment &&
        runSpacing == other.runSpacing &&
        crossAxisAlignment == other.crossAxisAlignment &&
        verticalDirection == other.verticalDirection &&
        listEquals(children, other.children);
  }
}
