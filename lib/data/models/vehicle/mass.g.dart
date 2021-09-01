// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mass.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Mass _$MassFromJson(Map<String, dynamic> json) {
  return Mass(
    kg: json['kg'] as num?,
    lb: json['lb'] as num?,
  );
}

Map<String, dynamic> _$MassToJson(Mass instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('kg', instance.kg);
  writeNotNull('lb', instance.lb);
  return val;
}
