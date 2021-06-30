import 'package:flutter_base_okr/data/models/vehicle/vehicle.dart';
import 'package:flutter_base_okr/utils/number.dart';
import 'package:json_annotation/json_annotation.dart';

import 'diameter.dart';
import 'engines.dart';
import 'first_stage.dart';
import 'landing_legs.dart';
import 'mass.dart';
import 'payload_weights.dart';
import 'second_stage.dart';

part 'rocket_vehicle.g.dart';

@JsonSerializable()
class RocketVehicle extends Vehicle {

	factory RocketVehicle.fromJson(Map<String, dynamic> json) => _$RocketVehicleFromJson(json);

  static List<RocketVehicle> getRocketModelList(body) =>
      body.map((i) => RocketVehicle.fromJson(i)).toList().cast<RocketVehicle>();

	Map<String, dynamic> toJson() => _$RocketVehicleToJson(this);

  Diameter? height;
  Diameter? diameter;
  Mass? mass;
  @JsonKey(name: 'first_stage')
  FirstStage? firstStage;
  @JsonKey(name: 'second_stage')
  SecondStage? secondStage;
  Engines? engines;
  @JsonKey(name: 'landing_legs')
  LandingLegs? landingLegs;
  @JsonKey(name: 'payload_weights')
  List<PayloadWeights>? payloadWeights;
  @JsonKey(name: 'flickr_images')
  List<String>? flickrImages;
  String? name;
  String? type;
  bool? active;
  num? stages;
  num? boosters;
  @JsonKey(name: 'cost_per_launch')
  num? costPerLaunch;
  @JsonKey(name: 'success_rate_pct')
  num? successRatePct;
  @JsonKey(name: 'first_flight')
  String? firstFlight;
  String? country;
  String? company;
  String? wikipedia;
  String? description;
  String? id;

  RocketVehicle({
      this.height, 
      this.diameter, 
      this.mass, 
      this.firstStage, 
      this.secondStage, 
      this.engines, 
      this.landingLegs, 
      this.payloadWeights, 
      this.flickrImages, 
      this.name, 
      this.type, 
      this.active, 
      this.stages, 
      this.boosters, 
      this.costPerLaunch, 
      this.successRatePct, 
      this.firstFlight,
      this.country, 
      this.company, 
      this.wikipedia, 
      this.description, 
      this.id}): super(
    id: id,
    name: name,
    type: type,
    description: description,
    url: wikipedia,
    height: height,
    diameter: diameter,
    mass: mass,
    active: active,
    dateTime: firstFlight != null ? DateTime.tryParse(firstFlight) : null,
    photos: flickrImages
  );

  String getFormattedCost() => formatCurrency.format(costPerLaunch);

  String getSuccessRate() => '%$successRatePct';

  String getStagesInfo() => '${stages.toString()} stages';

  String getRocketHeight() => '${formatDecimal.format(height?.meters)} m';

  String getRocketDiameter() => '${formatDecimal.format(diameter?.meters)} m';

  String getRocketMass() => '${formatDecimal.format(mass?.kg)} kg';

  String getFairingHeight() => '${formatDecimal.format(secondStage?.payloads?.compositeFairing?.height?.meters)} m';

  String getFairingDiameter() => '${formatDecimal.format(secondStage?.payloads?.compositeFairing?.diameter?.meters)} m';

  String getEngineThrustToWeight() => engines?.thrustToWeight != null
      ? formatDecimal.format(engines?.thrustToWeight)
      : '';

  String getEngineThrustSeaLevel() => engines?.thrustSeaLevel?.kN != null
      ? '${formatDecimal.format(engines?.thrustSeaLevel?.kN)} kN'
      : '';

  String getEngineThrustVacuum() => engines?.thrustVacuum?.kN != null
      ? '${formatDecimal.format(engines?.thrustVacuum?.kN)} kN'
      : '';

  String getEngineSeaLevelIsp() => engines?.isp?.seaLevel != null
      ? '${formatDecimal.format(engines?.isp?.seaLevel)} kN'
      : '';

  String getEngineVacuumIsp() => engines?.isp?.vacuum != null
      ? '${formatDecimal.format(engines?.isp?.vacuum)} kN'
      : '';
}