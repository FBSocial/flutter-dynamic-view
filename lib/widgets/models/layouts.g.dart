// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'layouts.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RowData _$RowDataFromJson(Map<String, dynamic> json) => RowData(
      mainAxisAlignment:
          $enumDecodeNullable(_$MainAxisAlignmentEnumMap, json['hAlign']),
      mainAxisSize: $enumDecodeNullable(_$MainAxisSizeEnumMap, json['size']),
      crossAxisAlignment:
          $enumDecodeNullable(_$CrossAxisAlignmentEnumMap, json['vAlign']),
      children: (json['children'] as List<dynamic>)
          .map((e) => WidgetData.fromJson(e as Map<String, dynamic>))
          .toList(),
      textStyle: json['textStyle'] == null
          ? null
          : TextStyleData.fromJson(json['textStyle'] as Map<String, dynamic>),
      padding: edgeInsetsFromJson(json['padding'] as String?),
      flex: json['flex'] as String?,
    )..tag = json['tag'] as String;

Map<String, dynamic> _$RowDataToJson(RowData instance) {
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
  val['children'] = instance.children.map((e) => e.toJson()).toList();
  writeNotNull('textStyle', instance.textStyle?.toJson());
  writeNotNull(
      'hAlign', _$MainAxisAlignmentEnumMap[instance.mainAxisAlignment]);
  writeNotNull('size', _$MainAxisSizeEnumMap[instance.mainAxisSize]);
  writeNotNull(
      'vAlign', _$CrossAxisAlignmentEnumMap[instance.crossAxisAlignment]);
  return val;
}

const _$MainAxisAlignmentEnumMap = {
  MainAxisAlignment.start: 'start',
  MainAxisAlignment.end: 'end',
  MainAxisAlignment.center: 'center',
  MainAxisAlignment.spaceBetween: 'spaceBetween',
  MainAxisAlignment.spaceAround: 'spaceAround',
  MainAxisAlignment.spaceEvenly: 'spaceEvenly',
};

const _$MainAxisSizeEnumMap = {
  MainAxisSize.min: 'min',
  MainAxisSize.max: 'max',
};

const _$CrossAxisAlignmentEnumMap = {
  CrossAxisAlignment.start: 'start',
  CrossAxisAlignment.end: 'end',
  CrossAxisAlignment.center: 'center',
  CrossAxisAlignment.stretch: 'stretch',
  CrossAxisAlignment.baseline: 'baseline',
};

ColumnData _$ColumnDataFromJson(Map<String, dynamic> json) => ColumnData(
      mainAxisAlignment: $enumDecodeNullable(
          _$MainAxisAlignmentEnumMap, json['mainAxisAlignment']),
      mainAxisSize: $enumDecodeNullable(_$MainAxisSizeEnumMap, json['size']),
      crossAxisAlignment: $enumDecodeNullable(
          _$CrossAxisAlignmentEnumMap, json['crossAxisAlignment']),
      children: (json['children'] as List<dynamic>)
          .map((e) => WidgetData.fromJson(e as Map<String, dynamic>))
          .toList(),
      padding: edgeInsetsFromJson(json['padding'] as String?),
      textStyle: json['textStyle'] == null
          ? null
          : TextStyleData.fromJson(json['textStyle'] as Map<String, dynamic>),
      flex: json['flex'] as String?,
    )..tag = json['tag'] as String;

Map<String, dynamic> _$ColumnDataToJson(ColumnData instance) {
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
  val['children'] = instance.children.map((e) => e.toJson()).toList();
  writeNotNull('textStyle', instance.textStyle?.toJson());
  writeNotNull('mainAxisAlignment',
      _$MainAxisAlignmentEnumMap[instance.mainAxisAlignment]);
  writeNotNull('size', _$MainAxisSizeEnumMap[instance.mainAxisSize]);
  writeNotNull('crossAxisAlignment',
      _$CrossAxisAlignmentEnumMap[instance.crossAxisAlignment]);
  return val;
}

PositionedData _$PositionedDataFromJson(Map<String, dynamic> json) =>
    PositionedData(
      child: WidgetData.fromJson(json['child'] as Map<String, dynamic>),
      top: const DoubleOrNullConverter().fromJson(json['top'] as num?),
      right: const DoubleOrNullConverter().fromJson(json['right'] as num?),
      bottom: const DoubleOrNullConverter().fromJson(json['bottom'] as num?),
      left: const DoubleOrNullConverter().fromJson(json['left'] as num?),
      width: const DoubleOrNullConverter().fromJson(json['width'] as num?),
      height: const DoubleOrNullConverter().fromJson(json['height'] as num?),
    )
      ..tag = json['tag'] as String
      ..padding = edgeInsetsFromJson(json['padding'] as String?)
      ..flex = json['flex'] as String?;

Map<String, dynamic> _$PositionedDataToJson(PositionedData instance) {
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
  writeNotNull('top', const DoubleOrNullConverter().toJson(instance.top));
  writeNotNull('right', const DoubleOrNullConverter().toJson(instance.right));
  writeNotNull('bottom', const DoubleOrNullConverter().toJson(instance.bottom));
  writeNotNull('left', const DoubleOrNullConverter().toJson(instance.left));
  writeNotNull('width', const DoubleOrNullConverter().toJson(instance.width));
  writeNotNull('height', const DoubleOrNullConverter().toJson(instance.height));
  return val;
}

StackData _$StackDataFromJson(Map<String, dynamic> json) => StackData(
      alignment:
          const AlignmentJsonConverter().fromJson(json['alignment'] as String?),
      children: (json['children'] as List<dynamic>)
          .map((e) => WidgetData.fromJson(e as Map<String, dynamic>))
          .toList(),
      padding: edgeInsetsFromJson(json['padding'] as String?),
      textStyle: json['textStyle'] == null
          ? null
          : TextStyleData.fromJson(json['textStyle'] as Map<String, dynamic>),
    )
      ..tag = json['tag'] as String
      ..flex = json['flex'] as String?;

Map<String, dynamic> _$StackDataToJson(StackData instance) {
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
  val['children'] = instance.children.map((e) => e.toJson()).toList();
  writeNotNull('textStyle', instance.textStyle?.toJson());
  writeNotNull(
      'alignment', const AlignmentJsonConverter().toJson(instance.alignment));
  return val;
}

GridViewData _$GridViewDataFromJson(Map<String, dynamic> json) => GridViewData(
      crossAxisCount: json['crossAxisCount'] as int,
      scrollDirection: $enumDecodeNullable(_$AxisEnumMap, json['direction']),
      mainAxisSpacing: const DoubleOrNullConverter()
          .fromJson(json['mainAxisSpacing'] as num?),
      crossAxisSpacing: const DoubleOrNullConverter()
          .fromJson(json['crossAxisSpacing'] as num?),
      childAspectRatio: const DoubleOrNullConverter()
          .fromJson(json['childAspectRatio'] as num?),
      shrikWrap: json['shrikWrap'] as bool?,
      padding: edgeInsetsFromJson(json['padding'] as String?),
      textStyle: json['textStyle'] == null
          ? null
          : TextStyleData.fromJson(json['textStyle'] as Map<String, dynamic>),
      children: (json['children'] as List<dynamic>)
          .map((e) => WidgetData.fromJson(e as Map<String, dynamic>))
          .toList(),
    )
      ..tag = json['tag'] as String
      ..flex = json['flex'] as String?;

Map<String, dynamic> _$GridViewDataToJson(GridViewData instance) {
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
  val['children'] = instance.children.map((e) => e.toJson()).toList();
  writeNotNull('textStyle', instance.textStyle?.toJson());
  writeNotNull('direction', _$AxisEnumMap[instance.scrollDirection]);
  val['crossAxisCount'] = instance.crossAxisCount;
  writeNotNull('mainAxisSpacing',
      const DoubleOrNullConverter().toJson(instance.mainAxisSpacing));
  writeNotNull('crossAxisSpacing',
      const DoubleOrNullConverter().toJson(instance.crossAxisSpacing));
  writeNotNull('childAspectRatio',
      const DoubleOrNullConverter().toJson(instance.childAspectRatio));
  writeNotNull('shrikWrap', instance.shrikWrap);
  return val;
}

const _$AxisEnumMap = {
  Axis.horizontal: 'horizontal',
  Axis.vertical: 'vertical',
};
