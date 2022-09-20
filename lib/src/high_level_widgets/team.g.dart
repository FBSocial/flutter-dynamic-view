// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'team.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TeamData _$TeamDataFromJson(Map<String, dynamic> json) => TeamData(
      header: json['header'] as String,
      cover: json['cover'] as String,
      gameUrl: json['gameUrl'] as String,
      playAgainUrl: json['playAgainUrl'] as String?,
      fallbackUrl: json['fallbackUrl'] as String?,
      annotation: json['annotation'] as String?,
    );

Map<String, dynamic> _$TeamDataToJson(TeamData instance) {
  final val = <String, dynamic>{
    'header': instance.header,
    'cover': instance.cover,
    'gameUrl': instance.gameUrl,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('playAgainUrl', instance.playAgainUrl);
  writeNotNull('fallbackUrl', instance.fallbackUrl);
  writeNotNull('annotation', instance.annotation);
  return val;
}
