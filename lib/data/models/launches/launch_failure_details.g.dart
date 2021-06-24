// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'launch_failure_details.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LaunchFailureDetails _$LaunchFailureDetailsFromJson(Map<String, dynamic> json) {
  return LaunchFailureDetails(
    time: json['time'] as int?,
    altitude: json['altitude'] as int?,
    reason: json['reason'] as String?,
  );
}

Map<String, dynamic> _$LaunchFailureDetailsToJson(
    LaunchFailureDetails instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('time', instance.time);
  writeNotNull('altitude', instance.altitude);
  writeNotNull('reason', instance.reason);
  return val;
}
