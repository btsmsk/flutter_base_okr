// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'rocket.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Rocket _$RocketFromJson(Map<String, dynamic> json) {
  return Rocket(
    json['rocket_id'] as String?,
    json['rocket_name'] as String?,
    json['rocket_type'] as String?,
    json['first_stage'] == null
        ? null
        : FirstStage.fromJson(json['first_stage'] as Map<String, dynamic>),
    json['second_stage'] == null
        ? null
        : SecondStage.fromJson(json['second_stage'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$RocketToJson(Rocket instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('rocket_id', instance.rocketId);
  writeNotNull('rocket_name', instance.rocketName);
  writeNotNull('rocket_type', instance.rocketType);
  writeNotNull('first_stage', instance.firstStage?.toJson());
  writeNotNull('second_stage', instance.secondStage?.toJson());
  return val;
}
