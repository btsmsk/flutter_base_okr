import 'package:json_annotation/json_annotation.dart';
import 'package:flutter_base_okr/data/models/vehicle/thrust.dart';

import 'isp.dart';

part 'engines.g.dart';

@JsonSerializable()
class Engines {

	factory Engines.fromJson(Map<String, dynamic> json) => _$EnginesFromJson(json);
	Map<String, dynamic> toJson() => _$EnginesToJson(this);

  Isp? isp;
  @JsonKey(name: 'thrust_sea_level')
  Thrust? thrustSeaLevel;
  @JsonKey(name: 'thrust_vacuum')
  Thrust? thrustVacuum;
  num? number;
  String? type;
  String? version;
  String? layout;
  @JsonKey(name: 'engine_loss_max')
  num? engineLossMax;
  @JsonKey(name: 'propellant_1')
  String? propellant1;
  @JsonKey(name: 'propellant_2')
  String? propellant2;
  @JsonKey(name: 'thrust_to_weight')
  num? thrustToWeight;

  Engines({
      this.isp, 
      this.thrustSeaLevel, 
      this.thrustVacuum, 
      this.number, 
      this.type, 
      this.version, 
      this.layout, 
      this.engineLossMax, 
      this.propellant1, 
      this.propellant2, 
      this.thrustToWeight});

}