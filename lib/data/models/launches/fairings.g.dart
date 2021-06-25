// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fairings.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Fairings _$FairingsFromJson(Map<String, dynamic> json) {
  return Fairings(
    json['reused'] as bool?,
    json['recovery_attempt'] as bool?,
    json['recovered'] as bool?,
    (json['ship'] as List<dynamic>?)?.map((e) => e as String).toList(),
  );
}

Map<String, dynamic> _$FairingsToJson(Fairings instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('reused', instance.reused);
  writeNotNull('recovery_attempt', instance.recoveryAttempt);
  writeNotNull('recovered', instance.recovered);
  writeNotNull('ship', instance.ship);
  return val;
}
