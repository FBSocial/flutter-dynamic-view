// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'advance_widgets.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MarkdownData _$MarkdownDataFromJson(Map<String, dynamic> json) => MarkdownData(
      json['data'] as String,
      shrinkWrap: json['shrinkWrap'] as bool?,
    )
      ..tag = $enumDecode(_$WidgetTagEnumMap, json['tag'])
      ..padding = edgeInsetsFromJson(json['padding'] as String?);

Map<String, dynamic> _$MarkdownDataToJson(MarkdownData instance) {
  final val = <String, dynamic>{
    'tag': _$WidgetTagEnumMap[instance.tag],
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('padding', edgeInsetsToJson(instance.padding));
  val['data'] = instance.data;
  writeNotNull('shrinkWrap', instance.shrinkWrap);
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
};
