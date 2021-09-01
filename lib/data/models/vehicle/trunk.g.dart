// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'trunk.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Trunk _$TrunkFromJson(Map<String, dynamic> json) {
  return Trunk(
    trunkVolume: json['trunk_volume'] == null
        ? null
        : Volume.fromJson(json['trunk_volume'] as Map<String, dynamic>),
    cargo: json['cargo'] == null
        ? null
        : Cargo.fromJson(json['cargo'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$TrunkToJson(Trunk instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('trunk_volume', instance.trunkVolume?.toJson());
  writeNotNull('cargo', instance.cargo?.toJson());
  return val;
}
