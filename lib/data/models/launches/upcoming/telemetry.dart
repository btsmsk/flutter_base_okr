import 'package:json_annotation/json_annotation.dart';

part 'telemetry.g.dart';

@JsonSerializable(explicitToJson: true)
class Telemetry {
  factory Telemetry.fromJson(Map<String, dynamic> json) =>
      _$TelemetryFromJson(json);

  Map<String, dynamic>? toJson(instance) => _$TelemetryToJson(this);

  @JsonKey(name: "flight_club")
  String? flightClub;

  Telemetry({this.flightClub});
}
