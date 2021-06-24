// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'second_stage.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SecondStage _$SecondStageFromJson(Map<String, dynamic> json) {
  return SecondStage(
    json['block'] as int?,
    (json['payloads'] as List<dynamic>?)
        ?.map((e) => Payloads.fromJson(e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$SecondStageToJson(SecondStage instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('block', instance.block);
  writeNotNull('payloads', instance.payloads?.map((e) => e.toJson()).toList());
  return val;
}
