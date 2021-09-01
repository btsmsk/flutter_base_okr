// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'achievement.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Achievement _$AchievementFromJson(Map<String, dynamic> json) {
  return Achievement(
    id: json['id'] as String?,
    title: json['title'] as String?,
    details: json['details'] as String?,
    url: json['url'] as String?,
    date: json['date'] == null ? null : DateTime.parse(json['date'] as String),
  );
}

Map<String, dynamic> _$AchievementToJson(Achievement instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('title', instance.title);
  writeNotNull('details', instance.details);
  writeNotNull('url', instance.url);
  writeNotNull('date', instance.date?.toIso8601String());
  return val;
}
