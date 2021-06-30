import 'package:json_annotation/json_annotation.dart';

part 'landing_legs.g.dart';

@JsonSerializable()
class LandingLegs {

	factory LandingLegs.fromJson(Map<String, dynamic> json) => _$LandingLegsFromJson(json);
	Map<String, dynamic> toJson() => _$LandingLegsToJson(this);

  num? number;
  String? material;

  LandingLegs({
      this.number, 
      this.material});
}