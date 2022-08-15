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
      annotation: json['annotation'] as String?,
      maxPlayers: json['maxPlayers'] as int? ?? 5,
    );

Map<String, dynamic> _$TeamDataToJson(TeamData instance) {
  final val = <String, dynamic>{
    'header': instance.header,
    'maxPlayers': instance.maxPlayers,
    'cover': instance.cover,
    'gameUrl': instance.gameUrl,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('playAgainUrl', instance.playAgainUrl);
  writeNotNull('annotation', instance.annotation);
  return val;
}
