// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'failures.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Failures _$FailuresFromJson(Map<String, dynamic> json) {
  return Failures(
    time: json['time'] as int?,
    altitude: json['altitude'] as int?,
    reason: json['reason'] as String?,
  );
}

Map<String, dynamic> _$FailuresToJson(Failures instance) {
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
