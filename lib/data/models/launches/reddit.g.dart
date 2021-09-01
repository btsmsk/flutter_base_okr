// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reddit.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Reddit _$RedditFromJson(Map<String, dynamic> json) {
  return Reddit(
    campaign: json['campaign'] as String?,
    launch: json['launch'] as String?,
    media: json['media'] as String?,
    recovery: json['recovery'] as String?,
  );
}

Map<String, dynamic> _$RedditToJson(Reddit instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('campaign', instance.campaign);
  writeNotNull('launch', instance.launch);
  writeNotNull('media', instance.media);
  writeNotNull('recovery', instance.recovery);
  return val;
}
