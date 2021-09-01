// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'landing_legs.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LandingLegs _$LandingLegsFromJson(Map<String, dynamic> json) {
  return LandingLegs(
    number: json['number'] as num?,
    material: json['material'] as String?,
  );
}

Map<String, dynamic> _$LandingLegsToJson(LandingLegs instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('number', instance.number);
  writeNotNull('material', instance.material);
  return val;
}
