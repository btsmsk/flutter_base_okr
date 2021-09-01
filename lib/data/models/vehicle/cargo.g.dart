// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cargo.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Cargo _$CargoFromJson(Map<String, dynamic> json) {
  return Cargo(
    solarArray: json['solar_array'] as num?,
    unpressurizedCargo: json['unpressurized_cargo'] as bool?,
  );
}

Map<String, dynamic> _$CargoToJson(Cargo instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('solar_array', instance.solarArray);
  writeNotNull('unpressurized_cargo', instance.unpressurizedCargo);
  return val;
}
