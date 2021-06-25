// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'timeline.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Timeline _$TimelineFromJson(Map<String, dynamic> json) {
  return Timeline(
    webcastLiftoff: json['webcast_liftoff'] as int?,
  );
}

Map<String, dynamic> _$TimelineToJson(Timeline instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('webcast_liftoff', instance.webcastLiftoff);
  return val;
}
