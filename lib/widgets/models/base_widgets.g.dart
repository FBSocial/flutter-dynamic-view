// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'base_widgets.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AspectRatioData _$AspectRatioDataFromJson(Map<String, dynamic> json) =>
    AspectRatioData(
      ratio: (json['ratio'] as num).toDouble(),
      child: WidgetData.fromJson(json['child'] as Map<String, dynamic>),
      flex: json['flex'] as String?,
    )
      ..tag = json['tag'] as String
      ..padding = edgeInsetsFromJson(json['padding'] as String?)
      ..width = const DoubleOrNullConverter().fromJson(json['width'] as num?)
      ..height = const DoubleOrNullConverter().fromJson(json['height'] as num?);

Map<String, dynamic> _$AspectRatioDataToJson(AspectRatioData instance) {
  final val = <String, dynamic>{
    'tag': instance.tag,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('padding', edgeInsetsToJson(instance.padding));
  writeNotNull('flex', instance.flex);
  writeNotNull('width', const DoubleOrNullConverter().toJson(instance.width));
  writeNotNull('height', const DoubleOrNullConverter().toJson(instance.height));
  val['ratio'] = instance.ratio;
  val['child'] = instance.child.toJson();
  return val;
}

TextStyleData _$TextStyleDataFromJson(Map<String, dynamic> json) =>
    TextStyleData(
      color: _$JsonConverterFromJson<String, Color>(
          json['color'], const ColorJsonConverter().fromJson),
      backgroundColor: _$JsonConverterFromJson<String, Color>(
          json['backgroundColor'], const ColorJsonConverter().fromJson),
      fontSize:
          const DoubleOrNullConverter().fromJson(json['fontSize'] as num?),
      fontWeight:
          $enumDecodeNullable(_$FontWeightDataEnumMap, json['fontWeight']),
    );

Map<String, dynamic> _$TextStyleDataToJson(TextStyleData instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull(
      'color',
      _$JsonConverterToJson<String, Color>(
          instance.color, const ColorJsonConverter().toJson));
  writeNotNull(
      'backgroundColor',
      _$JsonConverterToJson<String, Color>(
          instance.backgroundColor, const ColorJsonConverter().toJson));
  writeNotNull(
      'fontSize', const DoubleOrNullConverter().toJson(instance.fontSize));
  writeNotNull('fontWeight', _$FontWeightDataEnumMap[instance.fontWeight]);
  return val;
}

Value? _$JsonConverterFromJson<Json, Value>(
  Object? json,
  Value? Function(Json json) fromJson,
) =>
    json == null ? null : fromJson(json as Json);

const _$FontWeightDataEnumMap = {
  FontWeightData.normal: 'normal',
  FontWeightData.medium: 'medium',
};

Json? _$JsonConverterToJson<Json, Value>(
  Value? value,
  Json? Function(Value value) toJson,
) =>
    value == null ? null : toJson(value);

TextData _$TextDataFromJson(Map<String, dynamic> json) => TextData(
      json['data'] as String,
      style: json['style'] == null
          ? null
          : TextStyleData.fromJson(json['style'] as Map<String, dynamic>),
      textAlign: $enumDecodeNullable(_$TextAlignEnumMap, json['textAlign']),
      softWrap: json['softWrap'] as bool?,
      overflow: $enumDecodeNullable(_$TextOverflowEnumMap, json['overflow']),
      maxLines: json['maxLines'] as int?,
      padding: edgeInsetsFromJson(json['padding'] as String?),
      flex: json['flex'] as String?,
    )
      ..tag = json['tag'] as String
      ..width = const DoubleOrNullConverter().fromJson(json['width'] as num?)
      ..height = const DoubleOrNullConverter().fromJson(json['height'] as num?);

Map<String, dynamic> _$TextDataToJson(TextData instance) {
  final val = <String, dynamic>{
    'tag': instance.tag,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('padding', edgeInsetsToJson(instance.padding));
  writeNotNull('flex', instance.flex);
  writeNotNull('width', const DoubleOrNullConverter().toJson(instance.width));
  writeNotNull('height', const DoubleOrNullConverter().toJson(instance.height));
  val['data'] = instance.data;
  writeNotNull('style', instance.style?.toJson());
  writeNotNull('textAlign', _$TextAlignEnumMap[instance.textAlign]);
  writeNotNull('softWrap', instance.softWrap);
  writeNotNull('overflow', _$TextOverflowEnumMap[instance.overflow]);
  writeNotNull('maxLines', instance.maxLines);
  return val;
}

const _$TextAlignEnumMap = {
  TextAlign.left: 'left',
  TextAlign.right: 'right',
  TextAlign.center: 'center',
  TextAlign.justify: 'justify',
  TextAlign.start: 'start',
  TextAlign.end: 'end',
};

const _$TextOverflowEnumMap = {
  TextOverflow.clip: 'clip',
  TextOverflow.fade: 'fade',
  TextOverflow.ellipsis: 'ellipsis',
  TextOverflow.visible: 'visible',
};

ImageData _$ImageDataFromJson(Map<String, dynamic> json) => ImageData(
      json['src'] as String,
      width: const DoubleOrNullConverter().fromJson(json['width'] as num?),
      height: const DoubleOrNullConverter().fromJson(json['height'] as num?),
      fit: $enumDecodeNullable(_$BoxFitEnumMap, json['fit']),
      alignment: _$JsonConverterFromJson<String, Alignment>(
          json['alignment'], const AlignmentJsonConverter().fromJson),
      repeat: $enumDecodeNullable(_$ImageRepeatEnumMap, json['repeat']),
      centerSlice:
          const RectJsonConverter().fromJson(json['centerSlice'] as String?),
      radius: const DoubleOrNullConverter().fromJson(json['radius'] as num?),
      padding: edgeInsetsFromJson(json['padding'] as String?),
      flex: json['flex'] as String?,
      preview: json['preview'] as bool? ?? false,
    )..tag = json['tag'] as String;

Map<String, dynamic> _$ImageDataToJson(ImageData instance) {
  final val = <String, dynamic>{
    'tag': instance.tag,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('padding', edgeInsetsToJson(instance.padding));
  writeNotNull('flex', instance.flex);
  val['src'] = instance.src;
  writeNotNull('width', const DoubleOrNullConverter().toJson(instance.width));
  writeNotNull('height', const DoubleOrNullConverter().toJson(instance.height));
  writeNotNull('fit', _$BoxFitEnumMap[instance.fit]);
  writeNotNull(
      'alignment',
      _$JsonConverterToJson<String, Alignment>(
          instance.alignment, const AlignmentJsonConverter().toJson));
  writeNotNull('repeat', _$ImageRepeatEnumMap[instance.repeat]);
  writeNotNull(
      'centerSlice', const RectJsonConverter().toJson(instance.centerSlice));
  writeNotNull('radius', const DoubleOrNullConverter().toJson(instance.radius));
  val['preview'] = instance.preview;
  return val;
}

const _$BoxFitEnumMap = {
  BoxFit.fill: 'fill',
  BoxFit.contain: 'contain',
  BoxFit.cover: 'cover',
  BoxFit.fitWidth: 'fitWidth',
  BoxFit.fitHeight: 'fitHeight',
  BoxFit.none: 'none',
  BoxFit.scaleDown: 'scaleDown',
};

const _$ImageRepeatEnumMap = {
  ImageRepeat.repeat: 'repeat',
  ImageRepeat.repeatX: 'repeatX',
  ImageRepeat.repeatY: 'repeatY',
  ImageRepeat.noRepeat: 'noRepeat',
};

ButtonData _$ButtonDataFromJson(Map<String, dynamic> json) => ButtonData(
      type: $enumDecodeNullable(_$ButtonTypeEnumMap, json['type']),
      child: WidgetData.fromJson(json['child'] as Map<String, dynamic>),
      size: $enumDecodeNullable(_$ButtonSizeEnumMap, json['size']),
      href: json['href'] as String?,
      border: const BorderSideConverter().fromJson(json['border'] as String?),
      padding: edgeInsetsFromJson(json['padding'] as String?),
      flex: json['flex'] as String?,
    )
      ..tag = json['tag'] as String
      ..width = const DoubleOrNullConverter().fromJson(json['width'] as num?)
      ..height = const DoubleOrNullConverter().fromJson(json['height'] as num?);

Map<String, dynamic> _$ButtonDataToJson(ButtonData instance) {
  final val = <String, dynamic>{
    'tag': instance.tag,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('padding', edgeInsetsToJson(instance.padding));
  writeNotNull('flex', instance.flex);
  writeNotNull('width', const DoubleOrNullConverter().toJson(instance.width));
  writeNotNull('height', const DoubleOrNullConverter().toJson(instance.height));
  writeNotNull('child', instance.child?.toJson());
  writeNotNull('type', _$ButtonTypeEnumMap[instance.type]);
  writeNotNull('size', _$ButtonSizeEnumMap[instance.size]);
  writeNotNull('href', instance.href);
  writeNotNull('border', const BorderSideConverter().toJson(instance.border));
  return val;
}

const _$ButtonTypeEnumMap = {
  ButtonType.raw: 'raw',
  ButtonType.text: 'text',
  ButtonType.elevated: 'elevated',
  ButtonType.outlined: 'outlined',
  ButtonType.copy: 'copy',
};

const _$ButtonSizeEnumMap = {
  ButtonSize.big: 'big',
  ButtonSize.standard: 'standard',
  ButtonSize.small: 'small',
  ButtonSize.mini: 'mini',
};

BorderData _$BorderDataFromJson(Map<String, dynamic> json) => BorderData(
      color: _$JsonConverterFromJson<String, Color>(
          json['color'], const ColorJsonConverter().fromJson),
      width: const DoubleOrNullConverter().fromJson(json['width'] as num?),
      radius: const DoubleOrNullConverter().fromJson(json['radius'] as num?),
    );

Map<String, dynamic> _$BorderDataToJson(BorderData instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull(
      'color',
      _$JsonConverterToJson<String, Color>(
          instance.color, const ColorJsonConverter().toJson));
  writeNotNull('width', const DoubleOrNullConverter().toJson(instance.width));
  writeNotNull('radius', const DoubleOrNullConverter().toJson(instance.radius));
  return val;
}

Gradient _$GradientFromJson(Map<String, dynamic> json) => Gradient(
      colors: (json['colors'] as List<dynamic>)
          .map((e) => const ColorJsonConverter().fromJson(e as String))
          .toList(),
      stops: (json['stops'] as List<dynamic>?)
              ?.map((e) => (e as num).toDouble())
              .toList() ??
          const [0, 1],
      begin: json['begin'] == null
          ? Alignment.centerLeft
          : const AlignmentJsonConverter().fromJson(json['begin'] as String),
      end: json['end'] == null
          ? Alignment.centerRight
          : const AlignmentJsonConverter().fromJson(json['end'] as String),
    );

Map<String, dynamic> _$GradientToJson(Gradient instance) {
  final val = <String, dynamic>{
    'colors': instance.colors.map(const ColorJsonConverter().toJson).toList(),
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('stops', instance.stops);
  val['begin'] = const AlignmentJsonConverter().toJson(instance.begin);
  val['end'] = const AlignmentJsonConverter().toJson(instance.end);
  return val;
}

ContainerData _$ContainerDataFromJson(Map<String, dynamic> json) =>
    ContainerData(
      child: json['child'] == null
          ? null
          : WidgetData.fromJson(json['child'] as Map<String, dynamic>),
      width: const DoubleOrNullConverter().fromJson(json['width'] as num?),
      height: const DoubleOrNullConverter().fromJson(json['height'] as num?),
      constraints: const BoxConstraintsConverter()
          .fromJson(json['constraints'] as String?),
      border: json['border'] == null
          ? null
          : BorderData.fromJson(json['border'] as Map<String, dynamic>),
      alignment: _$JsonConverterFromJson<String, Alignment>(
          json['alignment'], const AlignmentJsonConverter().fromJson),
      backgroundColor: _$JsonConverterFromJson<String, Color>(
          json['backgroundColor'], const ColorJsonConverter().fromJson),
      gradient: json['gradient'] == null
          ? null
          : Gradient.fromJson(json['gradient'] as Map<String, dynamic>),
      margin: edgeInsetsFromJson(json['margin'] as String?),
      padding: edgeInsetsFromJson(json['padding'] as String?),
      flex: json['flex'] as String?,
    )..tag = json['tag'] as String;

Map<String, dynamic> _$ContainerDataToJson(ContainerData instance) {
  final val = <String, dynamic>{
    'tag': instance.tag,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('padding', edgeInsetsToJson(instance.padding));
  writeNotNull('flex', instance.flex);
  writeNotNull('child', instance.child?.toJson());
  writeNotNull('width', const DoubleOrNullConverter().toJson(instance.width));
  writeNotNull('height', const DoubleOrNullConverter().toJson(instance.height));
  writeNotNull('constraints',
      const BoxConstraintsConverter().toJson(instance.constraints));
  writeNotNull('border', instance.border?.toJson());
  writeNotNull(
      'alignment',
      _$JsonConverterToJson<String, Alignment>(
          instance.alignment, const AlignmentJsonConverter().toJson));
  writeNotNull(
      'backgroundColor',
      _$JsonConverterToJson<String, Color>(
          instance.backgroundColor, const ColorJsonConverter().toJson));
  writeNotNull('gradient', instance.gradient?.toJson());
  writeNotNull('margin', edgeInsetsToJson(instance.margin));
  return val;
}

DividerData _$DividerDataFromJson(Map<String, dynamic> json) => DividerData(
      thickness:
          const DoubleOrNullConverter().fromJson(json['thickness'] as num?),
      color: _$JsonConverterFromJson<String, Color>(
          json['color'], const ColorJsonConverter().fromJson),
      vertical: json['vertical'] as bool?,
      flex: json['flex'] as String?,
    )
      ..tag = json['tag'] as String
      ..padding = edgeInsetsFromJson(json['padding'] as String?)
      ..width = const DoubleOrNullConverter().fromJson(json['width'] as num?)
      ..height = const DoubleOrNullConverter().fromJson(json['height'] as num?);

Map<String, dynamic> _$DividerDataToJson(DividerData instance) {
  final val = <String, dynamic>{
    'tag': instance.tag,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('padding', edgeInsetsToJson(instance.padding));
  writeNotNull('flex', instance.flex);
  writeNotNull('width', const DoubleOrNullConverter().toJson(instance.width));
  writeNotNull('height', const DoubleOrNullConverter().toJson(instance.height));
  writeNotNull(
      'thickness', const DoubleOrNullConverter().toJson(instance.thickness));
  writeNotNull(
      'color',
      _$JsonConverterToJson<String, Color>(
          instance.color, const ColorJsonConverter().toJson));
  writeNotNull('vertical', instance.vertical);
  return val;
}
