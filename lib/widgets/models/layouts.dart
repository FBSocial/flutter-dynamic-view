// ignore_for_file: hash_and_equals

import 'package:dynamic_view/widgets/models/widgets.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart' hide Widget;
import 'package:json_annotation/json_annotation.dart';

part 'layouts.g.dart';

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class Expanded extends SingleChildWidget {
  Expanded(Widget child) : super(WidgetTag.expanded, child);

  factory Expanded.fromJson(Map<String, dynamic> json) =>
      _$ExpandedFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$ExpandedToJson(this);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is Expanded && child == other.child;
  }

  @override
  String toString() {
    return 'Expanded{child: $child}';
  }
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class Flexible extends SingleChildWidget {
  final double? flex;

  Flexible(Widget child, this.flex) : super(WidgetTag.flexible, child);

  factory Flexible.fromJson(Map<String, dynamic> json) =>
      _$FlexibleFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$FlexibleToJson(this);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is Flexible && flex == other.flex && child == other.child;
  }

  @override
  String toString() {
    return 'Flexible($flex, $child)';
  }
}

@JsonSerializable(
    explicitToJson: true, includeIfNull: false, createFactory: false)
class Spacer extends Widget {
  Spacer() : super(WidgetTag.spacer);

  @override
  Map<String, dynamic> toJson() => _$SpacerToJson(this);

  @override
  bool operator ==(Object other) {
    return other is Spacer;
  }

  @override
  String toString() {
    return 'Spacer()';
  }
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class Row extends MultiChildrenWidget {
  final MainAxisAlignment? mainAxisAlignment;
  final MainAxisSize? mainAxisSize;
  final CrossAxisAlignment? crossAxisAlignment;

  Row({
    this.mainAxisAlignment,
    this.mainAxisSize,
    this.crossAxisAlignment,
    required List<Widget> children,
  }) : super(WidgetTag.row, children: children);

  factory Row.fromJson(Map<String, dynamic> json) => _$RowFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$RowToJson(this);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is Row &&
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
class Column extends MultiChildrenWidget {
  final MainAxisAlignment? mainAxisAlignment;
  final MainAxisSize? mainAxisSize;
  final CrossAxisAlignment? crossAxisAlignment;

  Column({
    this.mainAxisAlignment,
    this.mainAxisSize,
    this.crossAxisAlignment,
    required List<Widget> children,
  }) : super(WidgetTag.column, children: children);

  factory Column.fromJson(Map<String, dynamic> json) => _$ColumnFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$ColumnToJson(this);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is Column &&
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
class Positioned extends SingleChildWidget {
  final double? top;
  final double? right;
  final double? bottom;
  final double? left;
  final double? width;
  final double? height;

  Positioned(
    Widget child, {
    this.top,
    this.right,
    this.bottom,
    this.left,
    this.width,
    this.height,
  }) : super(WidgetTag.positioned, child);

  factory Positioned.fromJson(Map<String, dynamic> json) =>
      _$PositionedFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$PositionedToJson(this);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is Positioned &&
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
@AlignmentJsonConverter()
class Stack extends MultiChildrenWidget {
  final Alignment? alignment;

  Stack({
    this.alignment,
    required List<Widget> children,
  }) : super(WidgetTag.stack, children: children);

  factory Stack.fromJson(Map<String, dynamic> json) => _$StackFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$StackToJson(this);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is Stack &&
        alignment == other.alignment &&
        listEquals(children, other.children);
  }

  @override
  String toString() {
    return 'Stack{alignment: $alignment, children: $children}';
  }
}
