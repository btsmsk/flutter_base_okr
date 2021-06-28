import 'package:json_annotation/json_annotation.dart';

part 'failures.g.dart';

@JsonSerializable()
class Failures {
  factory Failures.fromJson(Map<String, dynamic> json) =>
      _$FailuresFromJson(json);

  Map<String, dynamic> toJson() => _$FailuresToJson(this);

  int? time;
  int? altitude;
  String? reason;

  Failures({this.time, this.altitude, this.reason});
}
