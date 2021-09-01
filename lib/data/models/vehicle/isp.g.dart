// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'isp.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Isp _$IspFromJson(Map<String, dynamic> json) {
  return Isp(
    seaLevel: json['sea_level'] as num?,
    vacuum: json['vacuum'] as num?,
  );
}

Map<String, dynamic> _$IspToJson(Isp instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('sea_level', instance.seaLevel);
  writeNotNull('vacuum', instance.vacuum);
  return val;
}
