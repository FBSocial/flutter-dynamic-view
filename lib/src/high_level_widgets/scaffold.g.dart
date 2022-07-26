// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'scaffold.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ScaffoldHeader _$ScaffoldHeaderFromJson(Map<String, dynamic> json) =>
    ScaffoldHeader(
      title: json['title'] as String,
      template: $enumDecodeNullable(
              _$ScaffoldHeaderTemplateEnumMap, json['template']) ??
          ScaffoldHeaderTemplate.blue,
    );

Map<String, dynamic> _$ScaffoldHeaderToJson(ScaffoldHeader instance) =>
    <String, dynamic>{
      'title': instance.title,
      'template': _$ScaffoldHeaderTemplateEnumMap[instance.template],
    };

const _$ScaffoldHeaderTemplateEnumMap = {
  ScaffoldHeaderTemplate.blue: 'blue',
};

ScaffoldData _$ScaffoldDataFromJson(Map<String, dynamic> json) => ScaffoldData(
      header: json['header'] == null
          ? null
          : ScaffoldHeader.fromJson(json['header'] as Map<String, dynamic>),
      body: WidgetData.fromJson(json['body'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ScaffoldDataToJson(ScaffoldData instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('header', instance.header?.toJson());
  val['body'] = instance.body.toJson();
  return val;
}
