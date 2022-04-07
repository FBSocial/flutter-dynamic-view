// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'layouts.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Expanded _$ExpandedFromJson(Map<String, dynamic> json) => Expanded(
      Widget.fromJson(json['child'] as Map<String, dynamic>),
    )..tag = $enumDecode(_$WidgetTagEnumMap, json['tag']);

Map<String, dynamic> _$ExpandedToJson(Expanded instance) {
  final val = <String, dynamic>{
    'tag': _$WidgetTagEnumMap[instance.tag],
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('child', instance.child?.toJson());
  return val;
}

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

Flexible _$FlexibleFromJson(Map<String, dynamic> json) => Flexible(
      Widget.fromJson(json['child'] as Map<String, dynamic>),
      (json['flex'] as num?)?.toDouble(),
    )..tag = $enumDecode(_$WidgetTagEnumMap, json['tag']);

Map<String, dynamic> _$FlexibleToJson(Flexible instance) {
  final val = <String, dynamic>{
    'tag': _$WidgetTagEnumMap[instance.tag],
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('child', instance.child?.toJson());
  writeNotNull('flex', instance.flex);
  return val;
}

Map<String, dynamic> _$SpacerToJson(Spacer instance) => <String, dynamic>{
      'tag': _$WidgetTagEnumMap[instance.tag],
    };

Row _$RowFromJson(Map<String, dynamic> json) => Row(
      mainAxisAlignment: $enumDecodeNullable(
          _$MainAxisAlignmentEnumMap, json['mainAxisAlignment']),
      mainAxisSize:
          $enumDecodeNullable(_$MainAxisSizeEnumMap, json['mainAxisSize']),
      crossAxisAlignment: $enumDecodeNullable(
          _$CrossAxisAlignmentEnumMap, json['crossAxisAlignment']),
      children: (json['children'] as List<dynamic>)
          .map((e) => Widget.fromJson(e as Map<String, dynamic>))
          .toList(),
    )..tag = $enumDecode(_$WidgetTagEnumMap, json['tag']);

Map<String, dynamic> _$RowToJson(Row instance) {
  final val = <String, dynamic>{
    'tag': _$WidgetTagEnumMap[instance.tag],
    'children': instance.children.map((e) => e.toJson()).toList(),
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('mainAxisAlignment',
      _$MainAxisAlignmentEnumMap[instance.mainAxisAlignment]);
  writeNotNull('mainAxisSize', _$MainAxisSizeEnumMap[instance.mainAxisSize]);
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

Column _$ColumnFromJson(Map<String, dynamic> json) => Column(
      mainAxisAlignment: $enumDecodeNullable(
          _$MainAxisAlignmentEnumMap, json['mainAxisAlignment']),
      mainAxisSize:
          $enumDecodeNullable(_$MainAxisSizeEnumMap, json['mainAxisSize']),
      crossAxisAlignment: $enumDecodeNullable(
          _$CrossAxisAlignmentEnumMap, json['crossAxisAlignment']),
      children: (json['children'] as List<dynamic>)
          .map((e) => Widget.fromJson(e as Map<String, dynamic>))
          .toList(),
    )..tag = $enumDecode(_$WidgetTagEnumMap, json['tag']);

Map<String, dynamic> _$ColumnToJson(Column instance) {
  final val = <String, dynamic>{
    'tag': _$WidgetTagEnumMap[instance.tag],
    'children': instance.children.map((e) => e.toJson()).toList(),
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('mainAxisAlignment',
      _$MainAxisAlignmentEnumMap[instance.mainAxisAlignment]);
  writeNotNull('mainAxisSize', _$MainAxisSizeEnumMap[instance.mainAxisSize]);
  writeNotNull('crossAxisAlignment',
      _$CrossAxisAlignmentEnumMap[instance.crossAxisAlignment]);
  return val;
}

Positioned _$PositionedFromJson(Map<String, dynamic> json) => Positioned(
      Widget.fromJson(json['child'] as Map<String, dynamic>),
      top: (json['top'] as num?)?.toDouble(),
      right: (json['right'] as num?)?.toDouble(),
      bottom: (json['bottom'] as num?)?.toDouble(),
      left: (json['left'] as num?)?.toDouble(),
      width: (json['width'] as num?)?.toDouble(),
      height: (json['height'] as num?)?.toDouble(),
    )..tag = $enumDecode(_$WidgetTagEnumMap, json['tag']);

Map<String, dynamic> _$PositionedToJson(Positioned instance) {
  final val = <String, dynamic>{
    'tag': _$WidgetTagEnumMap[instance.tag],
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('child', instance.child?.toJson());
  writeNotNull('top', instance.top);
  writeNotNull('right', instance.right);
  writeNotNull('bottom', instance.bottom);
  writeNotNull('left', instance.left);
  writeNotNull('width', instance.width);
  writeNotNull('height', instance.height);
  return val;
}

Stack _$StackFromJson(Map<String, dynamic> json) => Stack(
      alignment: const AlignmentJsonConverter()
          .fromJson(json['alignment'] as Map<String, double>?),
      children: (json['children'] as List<dynamic>)
          .map((e) => Widget.fromJson(e as Map<String, dynamic>))
          .toList(),
    )..tag = $enumDecode(_$WidgetTagEnumMap, json['tag']);

Map<String, dynamic> _$StackToJson(Stack instance) {
  final val = <String, dynamic>{
    'tag': _$WidgetTagEnumMap[instance.tag],
    'children': instance.children.map((e) => e.toJson()).toList(),
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull(
      'alignment', const AlignmentJsonConverter().toJson(instance.alignment));
  return val;
}
