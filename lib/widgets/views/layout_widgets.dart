import 'package:dynamic_view/widgets/models/layouts.dart';
import 'package:dynamic_view/widgets/views/widget_views.dart';
import 'package:flutter/widgets.dart';

class LayoutWidgets {
  LayoutWidgets._();

  static Widget positionedFrom(PositionedData data) {
    return Positioned(
      top: data.top,
      right: data.right,
      bottom: data.bottom,
      left: data.left,
      width: data.width,
      height: data.height,
      child: DynamicView.fromData(data.child!),
    );
  }

  static Widget rowFrom(RowData data) {
    return Row(
      mainAxisSize: data.mainAxisSize ?? MainAxisSize.max,
      mainAxisAlignment: data.mainAxisAlignment ?? MainAxisAlignment.start,
      crossAxisAlignment: data.crossAxisAlignment ?? CrossAxisAlignment.center,
      children:
          data.children.map((child) => DynamicView.fromData(child)).toList(),
    );
  }

  static Widget columnFrom(ColumnData data) {
    return Column(
      mainAxisSize: data.mainAxisSize ?? MainAxisSize.min,
      mainAxisAlignment: data.mainAxisAlignment ?? MainAxisAlignment.start,
      crossAxisAlignment: data.crossAxisAlignment ?? CrossAxisAlignment.center,
      children:
          data.children.map((child) => DynamicView.fromData(child)).toList(),
    );
  }

  static Widget stackFrom(StackData data) {
    return Stack(
      alignment: data.alignment ?? Alignment.center,
      children:
          data.children.map((child) => DynamicView.fromData(child)).toList(),
    );
  }

  static Widget gridViewFrom(GridViewData data) {
    return GridView.count(
      physics:
          data.shrikWrap == false ? null : const NeverScrollableScrollPhysics(),
      shrinkWrap: data.shrikWrap ?? true,
      scrollDirection: data.scrollDirection ?? Axis.vertical,
      crossAxisCount: data.crossAxisCount,
      mainAxisSpacing: data.mainAxisSpacing ?? 0,
      crossAxisSpacing: data.crossAxisSpacing ?? 0,
      childAspectRatio: data.childAspectRatio ?? 1,
      padding: data.padding ?? EdgeInsets.zero,
      children:
          data.children.map((child) => DynamicView.fromData(child)).toList(),
    );
  }

  static Widget wrapFrom(WrapData data) {
    return Wrap(
      direction: data.direction ?? Axis.horizontal,
      alignment: data.alignment ?? WrapAlignment.start,
      spacing: data.spacing ?? 0.0,
      runAlignment: data.runAlignment ?? WrapAlignment.start,
      runSpacing: data.runSpacing ?? 0.0,
      crossAxisAlignment: data.crossAxisAlignment ?? WrapCrossAlignment.start,
      verticalDirection: data.verticalDirection ?? VerticalDirection.down,
      children:
          data.children.map((child) => DynamicView.fromData(child)).toList(),
    );
  }
}
