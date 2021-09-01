// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'heat_shield.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

HeatShield _$HeatShieldFromJson(Map<String, dynamic> json) {
  return HeatShield(
    material: json['material'] as String?,
    sizeMeters: json['size_meters'] as num?,
    tempDegrees: json['temp_degrees'] as num?,
    devPartner: json['dev_partner'] as String?,
  );
}

Map<String, dynamic> _$HeatShieldToJson(HeatShield instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('material', instance.material);
  writeNotNull('size_meters', instance.sizeMeters);
  writeNotNull('temp_degrees', instance.tempDegrees);
  writeNotNull('dev_partner', instance.devPartner);
  return val;
}
