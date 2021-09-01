// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pressurized_capsule.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PressurizedCapsule _$PressurizedCapsuleFromJson(Map<String, dynamic> json) {
  return PressurizedCapsule(
    payloadVolume: json['payload_volume'] == null
        ? null
        : Volume.fromJson(json['payload_volume'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$PressurizedCapsuleToJson(PressurizedCapsule instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('payload_volume', instance.payloadVolume?.toJson());
  return val;
}
