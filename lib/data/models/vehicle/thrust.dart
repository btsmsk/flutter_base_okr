import 'package:json_annotation/json_annotation.dart';

part 'thrust.g.dart';

@JsonSerializable()
class Thrust {

	factory Thrust.fromJson(Map<String, dynamic> json) => _$ThrustFromJson(json);
	Map<String, dynamic> toJson() => _$ThrustToJson(this);

  num? kN;
  num? lbf;

  Thrust({
      this.kN, 
      this.lbf});
}