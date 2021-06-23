import 'package:json_annotation/json_annotation.dart';

part 'cores.g.dart';

@JsonSerializable(includeIfNull: false)
class Cores {
  factory Cores.fromJson(Map<String, dynamic> json) => _$CoresFromJson(json);

  Map<String, dynamic> toJson(instance) => _$CoresToJson(this);

  @JsonKey(name: "core_serial")
  String? coreSerial;
  int? flight;
  int? block;
  bool? gridfins;
  bool? legs;
  bool? reused;
  @JsonKey(name: "land_success")
  bool? landSuccess;
  @JsonKey(name: "landing_intent")
  bool? landingIntent;
  @JsonKey(name: "landing_type")
  String? landingType;
  @JsonKey(name: "landing_vehicle")
  String? landingVehicle;

  Cores(
      {this.coreSerial,
      this.flight,
      this.block,
      this.gridfins,
      this.legs,
      this.reused,
      this.landSuccess,
      this.landingIntent,
      this.landingType,
      this.landingVehicle});
}
