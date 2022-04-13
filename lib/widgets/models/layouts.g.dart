// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'layouts.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ExpandedData _$ExpandedDataFromJson(Map<String, dynamic> json) => ExpandedData(
      flex: json['flex'] as int?,
      child: WidgetData.fromJson(json['child'] as Map<String, dynamic>),
    )
      ..tag = $enumDecode(_$WidgetTagEnumMap, json['tag'])
      ..padding = edgeInsetsFromJson(json['padding'] as String?);

Map<String, dynamic> _$ExpandedDataToJson(ExpandedData instance) {
  final val = <String, dynamic>{
    'tag': _$WidgetTagEnumMap[instance.tag],
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('padding', edgeInsetsToJson(instance.padding));
  writeNotNull('child', instance.child?.toJson());
  writeNotNull('flex', instance.flex);
  return val;
}

const _$WidgetTagEnumMap = {
  WidgetTag.aspectRatio: 'aspectRatio',
  WidgetTag.text: 'text',
  WidgetTag.image: 'image',
  WidgetTag.button: 'button',
  WidgetTag.divider: 'divider',
  WidgetTag.container: 'container',
  WidgetTag.expanded: 'expanded',
  WidgetTag.flexible: 'flexible',
  WidgetTag.spacer: 'spacer',
  WidgetTag.positioned: 'positioned',
  WidgetTag.gridView: 'gridView',
  WidgetTag.row: 'row',
  WidgetTag.column: 'column',
  WidgetTag.stack: 'stack',
  WidgetTag.markdown: 'markdown',
  WidgetTag.userAvatar: 'userAvatar',
  WidgetTag.userName: 'userName',
  WidgetTag.channel: 'channel',
};

FlexibleData _$FlexibleDataFromJson(Map<String, dynamic> json) => FlexibleData(
      child: WidgetData.fromJson(json['child'] as Map<String, dynamic>),
      flex: json['flex'] as int?,
    )
      ..tag = $enumDecode(_$WidgetTagEnumMap, json['tag'])
      ..padding = edgeInsetsFromJson(json['padding'] as String?);

Map<String, dynamic> _$FlexibleDataToJson(FlexibleData instance) {
  final val = <String, dynamic>{
    'tag': _$WidgetTagEnumMap[instance.tag],
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('padding', edgeInsetsToJson(instance.padding));
  writeNotNull('child', instance.child?.toJson());
  writeNotNull('flex', instance.flex);
  return val;
}

SpacerData _$SpacerDataFromJson(Map<String, dynamic> json) => SpacerData(
      flex: json['flex'] as int?,
    )
      ..tag = $enumDecode(_$WidgetTagEnumMap, json['tag'])
      ..padding = edgeInsetsFromJson(json['padding'] as String?);

Map<String, dynamic> _$SpacerDataToJson(SpacerData instance) {
  final val = <String, dynamic>{
    'tag': _$WidgetTagEnumMap[instance.tag],
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('padding', edgeInsetsToJson(instance.padding));
  writeNotNull('flex', instance.flex);
  return val;
}

RowData _$RowDataFromJson(Map<String, dynamic> json) => RowData(
      mainAxisAlignment:
          $enumDecodeNullable(_$MainAxisAlignmentEnumMap, json['hAlign']),
      mainAxisSize: $enumDecodeNullable(_$MainAxisSizeEnumMap, json['size']),
      crossAxisAlignment:
          $enumDecodeNullable(_$CrossAxisAlignmentEnumMap, json['vAlign']),
      textStyle: json['textStyle'] == null
          ? null
          : TextStyleData.fromJson(json['textStyle'] as Map<String, dynamic>),
      padding: edgeInsetsFromJson(json['padding'] as String?),
      children: (json['children'] as List<dynamic>)
          .map((e) => WidgetData.fromJson(e as Map<String, dynamic>))
          .toList(),
    )..tag = $enumDecode(_$WidgetTagEnumMap, json['tag']);

Map<String, dynamic> _$RowDataToJson(RowData instance) {
  final val = <String, dynamic>{
    'tag': _$WidgetTagEnumMap[instance.tag],
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('padding', edgeInsetsToJson(instance.padding));
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
      mainAxisAlignment:
          $enumDecodeNullable(_$MainAxisAlignmentEnumMap, json['vAlign']),
      mainAxisSize: $enumDecodeNullable(_$MainAxisSizeEnumMap, json['size']),
      crossAxisAlignment:
          $enumDecodeNullable(_$CrossAxisAlignmentEnumMap, json['hAlign']),
      padding: edgeInsetsFromJson(json['padding'] as String?),
      textStyle: json['textStyle'] == null
          ? null
          : TextStyleData.fromJson(json['textStyle'] as Map<String, dynamic>),
      children: (json['children'] as List<dynamic>)
          .map((e) => WidgetData.fromJson(e as Map<String, dynamic>))
          .toList(),
    )..tag = $enumDecode(_$WidgetTagEnumMap, json['tag']);

Map<String, dynamic> _$ColumnDataToJson(ColumnData instance) {
  final val = <String, dynamic>{
    'tag': _$WidgetTagEnumMap[instance.tag],
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('padding', edgeInsetsToJson(instance.padding));
  val['children'] = instance.children.map((e) => e.toJson()).toList();
  writeNotNull('textStyle', instance.textStyle?.toJson());
  writeNotNull(
      'vAlign', _$MainAxisAlignmentEnumMap[instance.mainAxisAlignment]);
  writeNotNull('size', _$MainAxisSizeEnumMap[instance.mainAxisSize]);
  writeNotNull(
      'hAlign', _$CrossAxisAlignmentEnumMap[instance.crossAxisAlignment]);
  return val;
}

PositionedData _$PositionedDataFromJson(Map<String, dynamic> json) =>
    PositionedData(
      child: WidgetData.fromJson(json['child'] as Map<String, dynamic>),
      top: const DoubleConverter().fromJson(json['top'] as String?),
      right: const DoubleConverter().fromJson(json['right'] as String?),
      bottom: const DoubleConverter().fromJson(json['bottom'] as String?),
      left: const DoubleConverter().fromJson(json['left'] as String?),
      width: const DoubleConverter().fromJson(json['width'] as String?),
      height: const DoubleConverter().fromJson(json['height'] as String?),
    )
      ..tag = $enumDecode(_$WidgetTagEnumMap, json['tag'])
      ..padding = edgeInsetsFromJson(json['padding'] as String?);

Map<String, dynamic> _$PositionedDataToJson(PositionedData instance) {
  final val = <String, dynamic>{
    'tag': _$WidgetTagEnumMap[instance.tag],
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('padding', edgeInsetsToJson(instance.padding));
  writeNotNull('child', instance.child?.toJson());
  writeNotNull('top', const DoubleConverter().toJson(instance.top));
  writeNotNull('right', const DoubleConverter().toJson(instance.right));
  writeNotNull('bottom', const DoubleConverter().toJson(instance.bottom));
  writeNotNull('left', const DoubleConverter().toJson(instance.left));
  writeNotNull('width', const DoubleConverter().toJson(instance.width));
  writeNotNull('height', const DoubleConverter().toJson(instance.height));
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
    )..tag = $enumDecode(_$WidgetTagEnumMap, json['tag']);

Map<String, dynamic> _$StackDataToJson(StackData instance) {
  final val = <String, dynamic>{
    'tag': _$WidgetTagEnumMap[instance.tag],
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('padding', edgeInsetsToJson(instance.padding));
  val['children'] = instance.children.map((e) => e.toJson()).toList();
  writeNotNull('textStyle', instance.textStyle?.toJson());
  writeNotNull(
      'alignment', const AlignmentJsonConverter().toJson(instance.alignment));
  return val;
}

GridViewData _$GridViewDataFromJson(Map<String, dynamic> json) => GridViewData(
      crossAxisCount: json['crossAxisCount'] as int,
      scrollDirection:
          $enumDecodeNullable(_$AxisEnumMap, json['scrollDirection']),
      mainAxisSpacing:
          const DoubleConverter().fromJson(json['mainAxisSpacing'] as String?),
      crossAxisSpacing:
          const DoubleConverter().fromJson(json['crossAxisSpacing'] as String?),
      childAspectRatio:
          const DoubleConverter().fromJson(json['childAspectRatio'] as String?),
      shrikWrap: json['shrikWrap'] as bool?,
      padding: edgeInsetsFromJson(json['padding'] as String?),
      textStyle: json['textStyle'] == null
          ? null
          : TextStyleData.fromJson(json['textStyle'] as Map<String, dynamic>),
      children: (json['children'] as List<dynamic>)
          .map((e) => WidgetData.fromJson(e as Map<String, dynamic>))
          .toList(),
    )..tag = $enumDecode(_$WidgetTagEnumMap, json['tag']);

Map<String, dynamic> _$GridViewDataToJson(GridViewData instance) {
  final val = <String, dynamic>{
    'tag': _$WidgetTagEnumMap[instance.tag],
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('padding', edgeInsetsToJson(instance.padding));
  val['children'] = instance.children.map((e) => e.toJson()).toList();
  writeNotNull('textStyle', instance.textStyle?.toJson());
  writeNotNull('scrollDirection', _$AxisEnumMap[instance.scrollDirection]);
  val['crossAxisCount'] = instance.crossAxisCount;
  writeNotNull('mainAxisSpacing',
      const DoubleConverter().toJson(instance.mainAxisSpacing));
  writeNotNull('crossAxisSpacing',
      const DoubleConverter().toJson(instance.crossAxisSpacing));
  writeNotNull('childAspectRatio',
      const DoubleConverter().toJson(instance.childAspectRatio));
  writeNotNull('shrikWrap', instance.shrikWrap);
  return val;
}

const _$AxisEnumMap = {
  Axis.horizontal: 'horizontal',
  Axis.vertical: 'vertical',
};
