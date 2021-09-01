// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fairings.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Fairings _$FairingsFromJson(Map<String, dynamic> json) {
  return Fairings(
    reused: json['reused'] as bool?,
    recoveryAttempt: json['recoveryAttempt'] as bool?,
    recovered: json['recovered'] as bool?,
    ships: (json['ships'] as List<dynamic>?)?.map((e) => e as String).toList(),
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
  writeNotNull('recoveryAttempt', instance.recoveryAttempt);
  writeNotNull('recovered', instance.recovered);
  writeNotNull('ships', instance.ships);
  return val;
}
