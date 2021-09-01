// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'volume.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Volume _$VolumeFromJson(Map<String, dynamic> json) {
  return Volume(
    cubicMeters: json['cubic_meters'] as num?,
    cubicFeet: json['cubic_feet'] as num?,
  );
}

Map<String, dynamic> _$VolumeToJson(Volume instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('cubic_meters', instance.cubicMeters);
  writeNotNull('cubic_feet', instance.cubicFeet);
  return val;
}
