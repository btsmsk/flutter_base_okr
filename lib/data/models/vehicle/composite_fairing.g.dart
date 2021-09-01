// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'composite_fairing.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CompositeFairing _$CompositeFairingFromJson(Map<String, dynamic> json) {
  return CompositeFairing(
    height: json['height'] == null
        ? null
        : Diameter.fromJson(json['height'] as Map<String, dynamic>),
    diameter: json['diameter'] == null
        ? null
        : Diameter.fromJson(json['diameter'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$CompositeFairingToJson(CompositeFairing instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('height', instance.height?.toJson());
  writeNotNull('diameter', instance.diameter?.toJson());
  return val;
}
