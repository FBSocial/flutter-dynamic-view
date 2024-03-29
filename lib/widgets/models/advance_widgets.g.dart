// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'advance_widgets.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserAvatarData _$UserAvatarDataFromJson(Map<String, dynamic> json) =>
    UserAvatarData(
      json['id'] as String,
      size: (json['size'] as num?)?.toDouble(),
      padding: edgeInsetsFromJson(json['padding'] as String?),
      flex: json['flex'] as String?,
    )..tag = json['tag'] as String;

Map<String, dynamic> _$UserAvatarDataToJson(UserAvatarData instance) {
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
  val['id'] = instance.id;
  writeNotNull('size', instance.size);
  return val;
}

UserNameData _$UserNameDataFromJson(Map<String, dynamic> json) => UserNameData(
      json['id'] as String,
      style: json['style'] == null
          ? null
          : TextStyleData.fromJson(json['style'] as Map<String, dynamic>),
      padding: edgeInsetsFromJson(json['padding'] as String?),
      flex: json['flex'] as String?,
    )..tag = json['tag'] as String;

Map<String, dynamic> _$UserNameDataToJson(UserNameData instance) {
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
  val['id'] = instance.id;
  writeNotNull('style', instance.style?.toJson());
  return val;
}

ChannelNameData _$ChannelNameDataFromJson(Map<String, dynamic> json) =>
    ChannelNameData(
      json['id'] as String,
      style: json['style'] == null
          ? null
          : TextStyleData.fromJson(json['style'] as Map<String, dynamic>),
      padding: edgeInsetsFromJson(json['padding'] as String?),
      flex: json['flex'] as String?,
    )..tag = json['tag'] as String;

Map<String, dynamic> _$ChannelNameDataToJson(ChannelNameData instance) {
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
  val['id'] = instance.id;
  writeNotNull('style', instance.style?.toJson());
  return val;
}

MarkdownData _$MarkdownDataFromJson(Map<String, dynamic> json) => MarkdownData(
      json['data'] as String,
      shrinkWrap: json['shrinkWrap'] as bool?,
    )
      ..tag = json['tag'] as String
      ..padding = edgeInsetsFromJson(json['padding'] as String?)
      ..flex = json['flex'] as String?;

Map<String, dynamic> _$MarkdownDataToJson(MarkdownData instance) {
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
  val['data'] = instance.data;
  writeNotNull('shrinkWrap', instance.shrinkWrap);
  return val;
}
