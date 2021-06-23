import 'package:json_annotation/json_annotation.dart';

part 'payloads.g.dart';

@JsonSerializable()
class Payloads {
  factory Payloads.fromJson(Map<String, dynamic> json) =>
      _$PayloadsFromJson(json);

  Map<String, dynamic> toJson(instance) => _$PayloadsToJson(this);

  @JsonKey(name: "payload_id")
  String? payloadId;
  bool? reused;
  List<String>? customers;
  String? nationality;
  @JsonKey(name: "manufacturer")
  String? manufacturer;
  @JsonKey(name: "payload_type")
  String? payloadType;
  @JsonKey(name: "payload_mass_kg")
  double? payloadMassKg;
  @JsonKey(name: "payload_mass_lbs")
  double? payloadMassLbs;
  String? orbit;

  Payloads(
      {this.payloadId,
      this.reused,
      this.customers,
      this.nationality,
      this.manufacturer,
      this.payloadType,
      this.payloadMassKg,
      this.payloadMassLbs,
      this.orbit});
}
