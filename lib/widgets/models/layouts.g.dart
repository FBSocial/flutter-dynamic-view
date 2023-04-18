// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'layouts.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RowData _$RowDataFromJson(Map<String, dynamic> json) => RowData(
      mainAxisAlignment: $enumDecodeNullable(
          _$MainAxisAlignmentEnumMap, json['mainAxisAlignment']),
      mainAxisSize: $enumDecodeNullable(_$MainAxisSizeEnumMap, json['size']),
      crossAxisAlignment: $enumDecodeNullable(
          _$CrossAxisAlignmentEnumMap, json['crossAxisAlignment']),
      children: (json['children'] as List<dynamic>)
          .map((e) => WidgetData.fromJson(e as Map<String, dynamic>))
          .toList(),
      textStyle: json['textStyle'] == null
          ? null
          : TextStyleData.fromJson(json['textStyle'] as Map<String, dynamic>),
      padding: edgeInsetsFromJson(json['padding'] as String?),
      flex: json['flex'] as String?,
    )
      ..tag = json['tag'] as String
      ..width = const DoubleOrNullConverter().fromJson(json['width'] as num?)
      ..height = const DoubleOrNullConverter().fromJson(json['height'] as num?);

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
  writeNotNull('width', const DoubleOrNullConverter().toJson(instance.width));
  writeNotNull('height', const DoubleOrNullConverter().toJson(instance.height));
  val['children'] = instance.children.map((e) => e.toJson()).toList();
  writeNotNull('textStyle', instance.textStyle?.toJson());
  writeNotNull('mainAxisAlignment',
      _$MainAxisAlignmentEnumMap[instance.mainAxisAlignment]);
  writeNotNull('size', _$MainAxisSizeEnumMap[instance.mainAxisSize]);
  writeNotNull('crossAxisAlignment',
      _$CrossAxisAlignmentEnumMap[instance.crossAxisAlignment]);
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
    )
      ..tag = json['tag'] as String
      ..width = const DoubleOrNullConverter().fromJson(json['width'] as num?)
      ..height = const DoubleOrNullConverter().fromJson(json['height'] as num?);

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
  writeNotNull('width', const DoubleOrNullConverter().toJson(instance.width));
  writeNotNull('height', const DoubleOrNullConverter().toJson(instance.height));
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
      alignment: _$JsonConverterFromJson<String, Alignment>(
          json['alignment'], const AlignmentJsonConverter().fromJson),
      children: (json['children'] as List<dynamic>)
          .map((e) => WidgetData.fromJson(e as Map<String, dynamic>))
          .toList(),
      padding: edgeInsetsFromJson(json['padding'] as String?),
      textStyle: json['textStyle'] == null
          ? null
          : TextStyleData.fromJson(json['textStyle'] as Map<String, dynamic>),
    )
      ..tag = json['tag'] as String
      ..flex = json['flex'] as String?
      ..width = const DoubleOrNullConverter().fromJson(json['width'] as num?)
      ..height = const DoubleOrNullConverter().fromJson(json['height'] as num?);

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
  writeNotNull('width', const DoubleOrNullConverter().toJson(instance.width));
  writeNotNull('height', const DoubleOrNullConverter().toJson(instance.height));
  val['children'] = instance.children.map((e) => e.toJson()).toList();
  writeNotNull('textStyle', instance.textStyle?.toJson());
  writeNotNull(
      'alignment',
      _$JsonConverterToJson<String, Alignment>(
          instance.alignment, const AlignmentJsonConverter().toJson));
  return val;
}

Value? _$JsonConverterFromJson<Json, Value>(
  Object? json,
  Value? Function(Json json) fromJson,
) =>
    json == null ? null : fromJson(json as Json);

Json? _$JsonConverterToJson<Json, Value>(
  Value? value,
  Json? Function(Value value) toJson,
) =>
    value == null ? null : toJson(value);

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
      ..flex = json['flex'] as String?
      ..width = const DoubleOrNullConverter().fromJson(json['width'] as num?)
      ..height = const DoubleOrNullConverter().fromJson(json['height'] as num?);

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
  writeNotNull('width', const DoubleOrNullConverter().toJson(instance.width));
  writeNotNull('height', const DoubleOrNullConverter().toJson(instance.height));
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

WrapData _$WrapDataFromJson(Map<String, dynamic> json) => WrapData(
      direction: $enumDecodeNullable(_$AxisEnumMap, json['direction']),
      alignment: $enumDecodeNullable(_$WrapAlignmentEnumMap, json['alignment']),
      spacing: const DoubleOrNullConverter().fromJson(json['spacing'] as num?),
      runAlignment:
          $enumDecodeNullable(_$WrapAlignmentEnumMap, json['runAlignment']),
      runSpacing:
          const DoubleOrNullConverter().fromJson(json['runSpacing'] as num?),
      crossAxisAlignment: $enumDecodeNullable(
          _$WrapCrossAlignmentEnumMap, json['crossAxisAlignment']),
      verticalDirection: $enumDecodeNullable(
          _$VerticalDirectionEnumMap, json['verticalDirection']),
      padding: edgeInsetsFromJson(json['padding'] as String?),
      textStyle: json['textStyle'] == null
          ? null
          : TextStyleData.fromJson(json['textStyle'] as Map<String, dynamic>),
      children: (json['children'] as List<dynamic>)
          .map((e) => WidgetData.fromJson(e as Map<String, dynamic>))
          .toList(),
    )
      ..tag = json['tag'] as String
      ..flex = json['flex'] as String?
      ..width = const DoubleOrNullConverter().fromJson(json['width'] as num?)
      ..height = const DoubleOrNullConverter().fromJson(json['height'] as num?);

Map<String, dynamic> _$WrapDataToJson(WrapData instance) {
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
  val['children'] = instance.children.map((e) => e.toJson()).toList();
  writeNotNull('textStyle', instance.textStyle?.toJson());
  writeNotNull('direction', _$AxisEnumMap[instance.direction]);
  writeNotNull('alignment', _$WrapAlignmentEnumMap[instance.alignment]);
  writeNotNull(
      'spacing', const DoubleOrNullConverter().toJson(instance.spacing));
  writeNotNull('runAlignment', _$WrapAlignmentEnumMap[instance.runAlignment]);
  writeNotNull(
      'runSpacing', const DoubleOrNullConverter().toJson(instance.runSpacing));
  writeNotNull('crossAxisAlignment',
      _$WrapCrossAlignmentEnumMap[instance.crossAxisAlignment]);
  writeNotNull('verticalDirection',
      _$VerticalDirectionEnumMap[instance.verticalDirection]);
  return val;
}

const _$WrapAlignmentEnumMap = {
  WrapAlignment.start: 'start',
  WrapAlignment.end: 'end',
  WrapAlignment.center: 'center',
  WrapAlignment.spaceBetween: 'spaceBetween',
  WrapAlignment.spaceAround: 'spaceAround',
  WrapAlignment.spaceEvenly: 'spaceEvenly',
};

const _$WrapCrossAlignmentEnumMap = {
  WrapCrossAlignment.start: 'start',
  WrapCrossAlignment.end: 'end',
  WrapCrossAlignment.center: 'center',
};

const _$VerticalDirectionEnumMap = {
  VerticalDirection.up: 'up',
  VerticalDirection.down: 'down',
};

KeySetData _$KeySetDataFromJson(Map<String, dynamic> json) => KeySetData(
      key: json['key'] as String?,
      yes: json['yes'] == null
          ? null
          : WidgetData.fromJson(json['yes'] as Map<String, dynamic>),
      no: json['no'] == null
          ? null
          : WidgetData.fromJson(json['no'] as Map<String, dynamic>),
      anyone: json['anyone'] as bool?,
      padding: edgeInsetsFromJson(json['padding'] as String?),
      flex: json['flex'] as String?,
    )
      ..tag = json['tag'] as String
      ..width = (json['width'] as num?)?.toDouble()
      ..height = (json['height'] as num?)?.toDouble();

Map<String, dynamic> _$KeySetDataToJson(KeySetData instance) {
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
  writeNotNull('width', instance.width);
  writeNotNull('height', instance.height);
  writeNotNull('key', instance.key);
  writeNotNull('anyone', instance.anyone);
  writeNotNull('yes', instance.yes?.toJson());
  writeNotNull('no', instance.no?.toJson());
  return val;
}
