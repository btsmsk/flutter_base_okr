// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payload_weights.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PayloadWeights _$PayloadWeightsFromJson(Map<String, dynamic> json) {
  return PayloadWeights(
    id: json['id'] as String?,
    name: json['name'] as String?,
    kg: json['kg'] as num?,
    lb: json['lb'] as num?,
  );
}

Map<String, dynamic> _$PayloadWeightsToJson(PayloadWeights instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('name', instance.name);
  writeNotNull('kg', instance.kg);
  writeNotNull('lb', instance.lb);
  return val;
}
