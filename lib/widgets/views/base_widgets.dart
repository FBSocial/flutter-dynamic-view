import 'package:dynamic_view/widgets/models/base_widgets.dart';
import 'package:dynamic_view/widgets/views/widget_views.dart';
import 'package:flutter/material.dart';

class BaseWidget {
  static Widget aspectRatioFrom(AspectRatioData data) {
    return AspectRatio(
        aspectRatio: data.ratio, child: DynamicView.fromData(data.child));
  }

  static TextStyle? textStyleFrom(TextStyleData? data) {
    if (data == null) return null;

    FontWeight? fontWeight;
    if (data.fontWeight != null) {
      switch (data.fontWeight!) {
        case FontWeightData.normal:
          fontWeight = FontWeight.normal;
          break;
        case FontWeightData.medium:
          fontWeight = FontWeight.w500;
          break;
      }
    }

    return TextStyle(
      color: data.color,
      fontSize: data.fontSize,
      backgroundColor: data.backgroundColor,
      fontWeight: fontWeight,
    );
  }

  static Text textFrom(TextData data) {
    return Text(
      data.data,
      style: textStyleFrom(data.style),
      textAlign: data.textAlign,
      softWrap: data.softWrap,
      overflow: data.overflow,
      maxLines: data.maxLines,
    );
  }

  static Widget imageFrom(ImageData data) {
    Widget widget = Image.network(data.src,
        width: data.width,
        height: data.height,
        fit: data.fit,
        alignment: data.alignment ?? Alignment.center,
        repeat: data.repeat ?? ImageRepeat.noRepeat,
        centerSlice: data.centerSlice);
    if (data.radius != null && data.radius != 0) {
      widget = ClipRRect(
        borderRadius: BorderRadius.circular(data.radius!),
        child: widget,
      );
    }
    return widget;
  }

  static Widget buttonFrom(ButtonData data) {
    ButtonType type = data.type ?? ButtonType.text;
    VisualDensity? visualDensity;
    if (data.size != null) {
      switch (data.size!) {
        case ButtonSize.big:
          visualDensity = const VisualDensity(horizontal: 1, vertical: 1);
          break;
        case ButtonSize.standard:
          visualDensity = VisualDensity.standard;
          break;
        case ButtonSize.small:
          visualDensity = VisualDensity.comfortable;
          break;
        case ButtonSize.mini:
          visualDensity = const VisualDensity(
            horizontal: VisualDensity.minimumDensity,
            vertical: VisualDensity.minimumDensity,
          );
          break;
      }
    }
    ButtonStyle style = ButtonStyle(
      side: MaterialStateProperty.all(data.border),
      padding: MaterialStateProperty.all(data.padding),
      visualDensity: visualDensity,
    );
    return Builder(builder: (context) {
      switch (type) {
        case ButtonType.raw:
          return InkWell(
            onTap: () => DynamicView.config.onClick(context, data, data.href),
            child: DynamicView.fromData(data.child!),
          );
        case ButtonType.text:
          return TextButton(
            style: style,
            onPressed: () =>
                DynamicView.config.onClick(context, data, data.href),
            child: DynamicView.fromData(data.child!),
          );
        case ButtonType.elevated:
          return ElevatedButton(
            style: style,
            onPressed: () =>
                DynamicView.config.onClick(context, data, data.href),
            child: DynamicView.fromData(data.child!),
          );
        case ButtonType.outlined:
        case ButtonType.copy:
          return OutlinedButton(
            style: style,
            onPressed: () =>
                DynamicView.config.onClick(context, data, data.href),
            child: DynamicView.fromData(data.child!),
          );
      }
    });
  }

  static Widget containerFrom(ContainerData data) {
    BorderRadius? borderRadius;
    Border? border;
    if (data.border != null) {
      final borderData = data.border!;
      if (borderData.radius != null) {
        borderRadius = BorderRadius.circular(borderData.radius!);
      }

      if (borderData.color != null || borderData.width != null) {
        border = Border.all(
          color: borderData.color ?? Colors.black,
          width: borderData.width ?? 1,
        );
      }
    }

    return Container(
      width: data.width,
      height: data.height,
      constraints: data.constraints,
      alignment: data.alignment,
      padding: data.padding,
      margin: data.margin,
      decoration: BoxDecoration(
        color: data.backgroundColor,
        borderRadius: borderRadius,
        border: border,
      ),
      child: data.child == null ? null : DynamicView.fromData(data.child!),
    );
  }

  static Widget dividerFrom(DividerData data) {
    if (data.vertical ?? false) {
      return VerticalDivider(
        color: data.color,
        thickness: data.thickness,
      );
    } else {
      return Divider(
        color: data.color,
        thickness: data.thickness,
      );
    }
  }
}
