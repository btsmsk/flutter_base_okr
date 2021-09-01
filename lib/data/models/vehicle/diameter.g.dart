// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'diameter.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Diameter _$DiameterFromJson(Map<String, dynamic> json) {
  return Diameter(
    meters: json['meters'] as num?,
    feet: json['feet'] as num?,
  );
}

Map<String, dynamic> _$DiameterToJson(Diameter instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('meters', instance.meters);
  writeNotNull('feet', instance.feet);
  return val;
}
