import 'package:flutter_base_okr/utils/number.dart';
import 'package:json_annotation/json_annotation.dart';

import 'payloads.dart';
import 'thrust.dart';

part 'second_stage.g.dart';

@JsonSerializable()
class SecondStage {

	factory SecondStage.fromJson(Map<String, dynamic> json) => _$SecondStageFromJson(json);
	Map<String, dynamic> toJson() => _$SecondStageToJson(this);

  Thrust? thrust;
  Payloads? payloads;
  bool? reusable;
  num? engines;
  @JsonKey(name: 'fuel_amount_tons')
  num? fuelAmountTons;
  @JsonKey(name: 'burn_time_sec')
  num? burnTimeSec;

  SecondStage({
      this.thrust, 
      this.payloads, 
      this.reusable, 
      this.engines, 
      this.fuelAmountTons, 
      this.burnTimeSec});

  String getFormattedThrust() => thrust != null
      ? '${formatDecimal.format(thrust?.kN)} kN'
      : '';

  String getFormattedFuelAmount() => fuelAmountTons != null
      ? '${formatDecimal.format(fuelAmountTons)} tons'
      : '';

  String getFormattedEngines() => engines != null
      ? '${formatDecimal.format(engines)} number'
      : '';
}