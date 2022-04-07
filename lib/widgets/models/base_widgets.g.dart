// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'base_widgets.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TextStyle _$TextStyleFromJson(Map<String, dynamic> json) => TextStyle(
      color: const ColorJsonConverter().fromJson(json['color'] as String?),
      backgroundColor: const ColorJsonConverter()
          .fromJson(json['backgroundColor'] as String?),
      fontSize: json['fontSize'] as int?,
    );

Map<String, dynamic> _$TextStyleToJson(TextStyle instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('color', const ColorJsonConverter().toJson(instance.color));
  writeNotNull('backgroundColor',
      const ColorJsonConverter().toJson(instance.backgroundColor));
  writeNotNull('fontSize', instance.fontSize);
  return val;
}

Text _$TextFromJson(Map<String, dynamic> json) => Text(
      json['data'] as String,
      style: json['style'] == null
          ? null
          : TextStyle.fromJson(json['style'] as Map<String, dynamic>),
      textAlign: $enumDecodeNullable(_$TextAlignEnumMap, json['textAlign']),
      softWrap: json['softWrap'] as bool?,
      overflow: $enumDecodeNullable(_$TextOverflowEnumMap, json['overflow']),
      maxLines: json['maxLines'] as int?,
    )..tag = $enumDecode(_$WidgetTagEnumMap, json['tag']);

Map<String, dynamic> _$TextToJson(Text instance) {
  final val = <String, dynamic>{
    'tag': _$WidgetTagEnumMap[instance.tag],
    'data': instance.data,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

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

const _$WidgetTagEnumMap = {
  WidgetTag.text: 'text',
  WidgetTag.image: 'image',
  WidgetTag.button: 'button',
  WidgetTag.container: 'container',
  WidgetTag.expanded: 'expanded',
  WidgetTag.flexible: 'flexible',
  WidgetTag.spacer: 'spacer',
  WidgetTag.positioned: 'positioned',
  WidgetTag.row: 'row',
  WidgetTag.column: 'column',
  WidgetTag.stack: 'stack',
};

Image _$ImageFromJson(Map<String, dynamic> json) => Image(
      json['src'] as String,
      width: (json['width'] as num?)?.toDouble(),
      height: (json['height'] as num?)?.toDouble(),
      fit: $enumDecodeNullable(_$BoxFitEnumMap, json['fit']),
      alignment: const AlignmentJsonConverter()
          .fromJson(json['alignment'] as Map<String, double>?),
      repeat: $enumDecodeNullable(_$ImageRepeatEnumMap, json['repeat']) ??
          ImageRepeat.noRepeat,
      centerSlice: const RectJsonConverter()
          .fromJson(json['centerSlice'] as Map<String, double>),
    )..tag = $enumDecode(_$WidgetTagEnumMap, json['tag']);

Map<String, dynamic> _$ImageToJson(Image instance) {
  final val = <String, dynamic>{
    'tag': _$WidgetTagEnumMap[instance.tag],
    'src': instance.src,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('width', instance.width);
  writeNotNull('height', instance.height);
  writeNotNull('fit', _$BoxFitEnumMap[instance.fit]);
  writeNotNull(
      'alignment', const AlignmentJsonConverter().toJson(instance.alignment));
  val['repeat'] = _$ImageRepeatEnumMap[instance.repeat];
  writeNotNull(
      'centerSlice', const RectJsonConverter().toJson(instance.centerSlice));
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

Button _$ButtonFromJson(Map<String, dynamic> json) => Button(
      type: $enumDecodeNullable(_$ButtonTypeEnumMap, json['type']) ??
          ButtonType.outlined,
      child: Widget.fromJson(json['child'] as Map<String, dynamic>),
      href: json['href'] as String?,
    )..tag = $enumDecode(_$WidgetTagEnumMap, json['tag']);

Map<String, dynamic> _$ButtonToJson(Button instance) {
  final val = <String, dynamic>{
    'tag': _$WidgetTagEnumMap[instance.tag],
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('child', instance.child?.toJson());
  val['type'] = _$ButtonTypeEnumMap[instance.type];
  writeNotNull('href', instance.href);
  return val;
}

const _$ButtonTypeEnumMap = {
  ButtonType.text: 'text',
  ButtonType.elevated: 'elevated',
  ButtonType.outlined: 'outlined',
};

Border _$BorderFromJson(Map<String, dynamic> json) => Border(
      color: const ColorJsonConverter().fromJson(json['color'] as String?),
      width: (json['width'] as num?)?.toDouble(),
      radius: (json['radius'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$BorderToJson(Border instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('color', const ColorJsonConverter().toJson(instance.color));
  writeNotNull('width', instance.width);
  writeNotNull('radius', instance.radius);
  return val;
}

Container _$ContainerFromJson(Map<String, dynamic> json) => Container(
      child: json['child'] == null
          ? null
          : Widget.fromJson(json['child'] as Map<String, dynamic>),
      width: (json['width'] as num?)?.toDouble(),
      height: (json['height'] as num?)?.toDouble(),
      border: json['border'] == null
          ? null
          : Border.fromJson(json['border'] as Map<String, dynamic>),
      alignment: const AlignmentJsonConverter()
          .fromJson(json['alignment'] as Map<String, double>?),
      backgroundColor: const ColorJsonConverter()
          .fromJson(json['backgroundColor'] as String?),
    )..tag = $enumDecode(_$WidgetTagEnumMap, json['tag']);

Map<String, dynamic> _$ContainerToJson(Container instance) {
  final val = <String, dynamic>{
    'tag': _$WidgetTagEnumMap[instance.tag],
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('child', instance.child?.toJson());
  writeNotNull('width', instance.width);
  writeNotNull('height', instance.height);
  writeNotNull('border', instance.border?.toJson());
  writeNotNull(
      'alignment', const AlignmentJsonConverter().toJson(instance.alignment));
  writeNotNull('backgroundColor',
      const ColorJsonConverter().toJson(instance.backgroundColor));
  return val;
}
