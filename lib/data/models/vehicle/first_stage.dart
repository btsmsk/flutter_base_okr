import 'package:flutter_base_okr/utils/number.dart';
import 'package:json_annotation/json_annotation.dart';
import 'thrust.dart';

part 'first_stage.g.dart';

@JsonSerializable()
class FirstStage {
  factory FirstStage.fromJson(Map<String, dynamic> json) =>
      _$FirstStageFromJson(json);

  Map<String, dynamic> toJson() => _$FirstStageToJson(this);

  @JsonKey(name: 'thrust_sea_level')
  Thrust? thrustSeaLevel;
  @JsonKey(name: 'thrust_vacuum')
  Thrust? thrustVacuum;
  bool? reusable;
  num? engines;
  @JsonKey(name: 'fuel_amount_tons')
  num? fuelAmountTons;
  @JsonKey(name: 'burn_time_sec')
  num? burnTimeSec;

  FirstStage(
      {this.thrustSeaLevel,
      this.thrustVacuum,
      this.reusable,
      this.engines,
      this.fuelAmountTons,
      this.burnTimeSec});

  String getFormattedThrustSeaLevel() => thrustSeaLevel != null
      ? '${formatDecimal.format(thrustSeaLevel?.kN)} kN'
      : '';

  String getFormattedFuelAmount() => fuelAmountTons != null
      ? '${formatDecimal.format(fuelAmountTons)} tons'
      : '';
}
