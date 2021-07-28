import 'package:flutter_base_okr/utils/number.dart';
import 'package:json_annotation/json_annotation.dart';
import 'thrust.dart';

part 'thrusters.g.dart';

@JsonSerializable()
class Thrusters {

	factory Thrusters.fromJson(Map<String, dynamic> json) => _$ThrustersFromJson(json);
	Map<String, dynamic> toJson( ) => _$ThrustersToJson(this);

  String? type;
  num? amount;
  num? pods;
  @JsonKey(name: 'fuel_1')
  String? fuel1;
  @JsonKey(name: 'fuel_2')
  String? fuel2;
  num? isp;
  Thrust? thrust;

  Thrusters({
      this.type, 
      this.amount, 
      this.pods, 
      this.fuel1, 
      this.fuel2, 
      this.isp, 
      this.thrust});

  String getEngineThrust() => thrust?.kN != null
      ? '${formatDecimal.format(thrust?.kN)} kN'
      : '';

  String getIsp() => isp != null
      ? '${formatDecimal.format(isp)} s'
      : '';

}