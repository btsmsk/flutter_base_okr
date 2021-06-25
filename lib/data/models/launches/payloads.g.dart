// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payloads.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Payloads _$PayloadsFromJson(Map<String, dynamic> json) {
  return Payloads(
    payloadId: json['payload_id'] as String?,
    reused: json['reused'] as bool?,
    customers:
        (json['customers'] as List<dynamic>?)?.map((e) => e as String).toList(),
    nationality: json['nationality'] as String?,
    manufacturer: json['manufacturer'] as String?,
    payloadType: json['payload_type'] as String?,
    payloadMassKg: (json['payload_mass_kg'] as num?)?.toDouble(),
    payloadMassLbs: (json['payload_mass_lbs'] as num?)?.toDouble(),
    orbit: json['orbit'] as String?,
  );
}

Map<String, dynamic> _$PayloadsToJson(Payloads instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('payload_id', instance.payloadId);
  writeNotNull('reused', instance.reused);
  writeNotNull('customers', instance.customers);
  writeNotNull('nationality', instance.nationality);
  writeNotNull('manufacturer', instance.manufacturer);
  writeNotNull('payload_type', instance.payloadType);
  writeNotNull('payload_mass_kg', instance.payloadMassKg);
  writeNotNull('payload_mass_lbs', instance.payloadMassLbs);
  writeNotNull('orbit', instance.orbit);
  return val;
}
