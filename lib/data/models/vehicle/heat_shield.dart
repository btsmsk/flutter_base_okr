import 'package:json_annotation/json_annotation.dart';

part 'heat_shield.g.dart';

@JsonSerializable()
class HeatShield {

	factory HeatShield.fromJson(Map<String, dynamic> json) => _$HeatShieldFromJson(json);
	Map<String, dynamic> toJson( ) => _$HeatShieldToJson(this);

  String? material;
  @JsonKey(name: 'size_meters')
  num? sizeMeters;
  @JsonKey(name: 'temp_degrees')
  num? tempDegrees;
  @JsonKey(name: 'dev_partner')
  String? devPartner;

  HeatShield({
      this.material, 
      this.sizeMeters, 
      this.tempDegrees, 
      this.devPartner});
}