// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payloads.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Payloads _$PayloadsFromJson(Map<String, dynamic> json) {
  return Payloads(
    compositeFairing: json['composite_fairing'] == null
        ? null
        : CompositeFairing.fromJson(
            json['composite_fairing'] as Map<String, dynamic>),
    option1: json['option_1'] as String?,
  );
}

Map<String, dynamic> _$PayloadsToJson(Payloads instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('composite_fairing', instance.compositeFairing?.toJson());
  writeNotNull('option_1', instance.option1);
  return val;
}
