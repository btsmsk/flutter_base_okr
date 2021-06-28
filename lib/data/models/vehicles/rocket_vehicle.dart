
import 'dart:convert';

import 'package:flutter_base_okr/data/models/vehicles/vehicle.dart';

RocketVehicle rocketVehicleFromMap(String str) => RocketVehicle.fromMap(json.decode(str));

String rocketVehicleToMap(RocketVehicle data) => json.encode(data.toMap());

List<RocketVehicle> rocketListFromJson(str) =>
    List<RocketVehicle>.from(str.map((x) => RocketVehicle.fromMap(x)));

class RocketVehicle extends Vehicle{
  RocketVehicle({
    this.id,
    this.active,
    this.stages,
    this.boosters,
    this.costPerLaunch,
    this.successRatePct,
    this.firstFlight,
    this.country,
    this.company,
    this.height,
    this.diameter,
    this.mass,
    this.payloadWeights,
    this.firstStage,
    this.secondStage,
    this.engines,
    this.landingLegs,
    this.flickrImages,
    this.wikipedia,
    this.description,
    this.rocketId,
    this.rocketName,
    this.rocketType,
  }) : super(
    id: rocketId,
    name: rocketName,
    type: rocketType,
    description: description,
    url: wikipedia,
    height: height,
    diameter: diameter,
    mass: mass,
    active: active,
    firstFlight: firstFlight,
    photos: flickrImages
  );

  String? id;
  bool? active;
  num? stages;
  num? boosters;
  num? costPerLaunch;
  num? successRatePct;
  DateTime? firstFlight;
  String? country;
  String? company;
  Diameter? height;
  Diameter? diameter;
  Mass? mass;
  List<PayloadWeight>? payloadWeights;
  FirstStage? firstStage;
  SecondStage? secondStage;
  Engines? engines;
  LandingLegs? landingLegs;
  List<String>? flickrImages;
  String? wikipedia;
  String? description;
  String? rocketId;
  String? rocketName;
  String? rocketType;

  factory RocketVehicle.fromMap(Map<String, dynamic> json) => RocketVehicle(
    id: json["id"] == null ? null : json["rocket_id"].toString(),
    active: json["active"] == null ? null : json["active"],
    stages: json["stages"] == null ? null : json["stages"],
    boosters: json["boosters"] == null ? null : json["boosters"],
    costPerLaunch: json["cost_per_launch"] == null ? null : json["cost_per_launch"],
    successRatePct: json["success_rate_pct"] == null ? null : json["success_rate_pct"],
    firstFlight: json["first_flight"] == null ? null : DateTime.parse(json["first_flight"]),
    country: json["country"] == null ? null : json["country"],
    company: json["company"] == null ? null : json["company"],
    height: json["height"] == null ? null : Diameter.fromMap(json["height"]),
    diameter: json["diameter"] == null ? null : Diameter.fromMap(json["diameter"]),
    mass: json["mass"] == null ? null : Mass.fromMap(json["mass"]),
    payloadWeights: json["payload_weights"] == null ? null : List<PayloadWeight>.from(json["payload_weights"].map((x) => PayloadWeight.fromMap(x))),
    firstStage: json["first_stage"] == null ? null : FirstStage.fromMap(json["first_stage"]),
    secondStage: json["second_stage"] == null ? null : SecondStage.fromMap(json["second_stage"]),
    engines: json["engines"] == null ? null : Engines.fromMap(json["engines"]),
    landingLegs: json["landing_legs"] == null ? null : LandingLegs.fromMap(json["landing_legs"]),
    flickrImages: json["flickr_images"] == null ? null : List<String>.from(json["flickr_images"].map((x) => x)),
    wikipedia: json["wikipedia"] == null ? null : json["wikipedia"],
    description: json["description"] == null ? null : json["description"],
    rocketId: json["rocket_id"] == null ? null : json["rocket_id"],
    rocketName: json["rocket_name"] == null ? null : json["rocket_name"],
    rocketType: json["rocket_type"] == null ? null : json["rocket_type"],
  );

  Map<String, dynamic> toMap() => {
    "id": rocketId == null ? null : rocketId,
    "active": active == null ? null : active,
    "stages": stages == null ? null : stages,
    "boosters": boosters == null ? null : boosters,
    "cost_per_launch": costPerLaunch == null ? null : costPerLaunch,
    "success_rate_pct": successRatePct == null ? null : successRatePct,
    "first_flight": firstFlight == null ? null : "${firstFlight?.year.toString().padLeft(4, '0')}-${firstFlight?.month.toString().padLeft(2, '0')}-${firstFlight?.day.toString().padLeft(2, '0')}",
    "country": country == null ? null : country,
    "company": company == null ? null : company,
    "height": height == null ? null : height?.toMap(),
    "diameter": diameter == null ? null : diameter?.toMap(),
    "mass": mass == null ? null : mass?.toMap(),
    "payload_weights": payloadWeights == null ? null : List<dynamic>.from(payloadWeights!.map((x) => x.toMap())),
    "first_stage": firstStage == null ? null : firstStage?.toMap(),
    "second_stage": secondStage == null ? null : secondStage?.toMap(),
    "engines": engines == null ? null : engines?.toMap(),
    "landing_legs": landingLegs == null ? null : landingLegs?.toMap(),
    "flickr_images": flickrImages == null ? null : List<dynamic>.from(flickrImages!.map((x) => x)),
    "wikipedia": wikipedia == null ? null : wikipedia,
    "description": description == null ? null : description,
    "rocket_id": rocketId == null ? null : rocketId,
    "rocket_name": rocketName == null ? null : rocketName,
    "rocket_type": rocketType == null ? null : rocketType,
  };
}

class Engines {
  Engines({
    this.number,
    this.type,
    this.version,
    this.layout,
    this.isp,
    this.engineLossMax,
    this.propellant1,
    this.propellant2,
    this.thrustSeaLevel,
    this.thrustVacuum,
    this.thrustToWeight,
  });

  num? number;
  String? type;
  String? version;
  String? layout;
  Isp? isp;
  num? engineLossMax;
  String? propellant1;
  String? propellant2;
  Thrust? thrustSeaLevel;
  Thrust? thrustVacuum;
  num? thrustToWeight;

  factory Engines.fromMap(Map<String, dynamic> json) => Engines(
    number: json["number"] == null ? null : json["number"],
    type: json["type"] == null ? null : json["type"],
    version: json["version"] == null ? null : json["version"],
    layout: json["layout"] == null ? null : json["layout"],
    isp: json["isp"] == null ? null : Isp.fromMap(json["isp"]),
    engineLossMax: json["engine_loss_max"] == null ? null : json["engine_loss_max"],
    propellant1: json["propellant_1"] == null ? null : json["propellant_1"],
    propellant2: json["propellant_2"] == null ? null : json["propellant_2"],
    thrustSeaLevel: json["thrust_sea_level"] == null ? null : Thrust.fromMap(json["thrust_sea_level"]),
    thrustVacuum: json["thrust_vacuum"] == null ? null : Thrust.fromMap(json["thrust_vacuum"]),
    thrustToWeight: json["thrust_to_weight"] == null ? null : json["thrust_to_weight"],
  );

  Map<String, dynamic> toMap() => {
    "number": number == null ? null : number,
    "type": type == null ? null : type,
    "version": version == null ? null : version,
    "layout": layout == null ? null : layout,
    "isp": isp == null ? null : isp?.toMap(),
    "engine_loss_max": engineLossMax == null ? null : engineLossMax,
    "propellant_1": propellant1 == null ? null : propellant1,
    "propellant_2": propellant2 == null ? null : propellant2,
    "thrust_sea_level": thrustSeaLevel == null ? null : thrustSeaLevel?.toMap(),
    "thrust_vacuum": thrustVacuum == null ? null : thrustVacuum?.toMap(),
    "thrust_to_weight": thrustToWeight == null ? null : thrustToWeight,
  };
}

class Isp {
  Isp({
    this.seaLevel,
    this.vacuum,
  });

  num? seaLevel;
  num? vacuum;

  factory Isp.fromMap(Map<String, dynamic> json) => Isp(
    seaLevel: json["sea_level"] == null ? null : json["sea_level"],
    vacuum: json["vacuum"] == null ? null : json["vacuum"],
  );

  Map<String, dynamic> toMap() => {
    "sea_level": seaLevel == null ? null : seaLevel,
    "vacuum": vacuum == null ? null : vacuum,
  };
}

class FirstStage {
  FirstStage({
    this.reusable,
    this.engines,
    this.fuelAmountTons,
    this.burnTimeSec,
    this.thrustSeaLevel,
    this.thrustVacuum,
  });

  bool? reusable;
  num? engines;
  num? fuelAmountTons;
  num? burnTimeSec;
  Thrust? thrustSeaLevel;
  Thrust? thrustVacuum;

  factory FirstStage.fromMap(Map<String, dynamic> json) => FirstStage(
    reusable: json["reusable"] == null ? null : json["reusable"],
    engines: json["engines"] == null ? null : json["engines"],
    fuelAmountTons: json["fuel_amount_tons"] == null ? null : json["fuel_amount_tons"],
    burnTimeSec: json["burn_time_sec"] == null ? null : json["burn_time_sec"],
    thrustSeaLevel: json["thrust_sea_level"] == null ? null : Thrust.fromMap(json["thrust_sea_level"]),
    thrustVacuum: json["thrust_vacuum"] == null ? null : Thrust.fromMap(json["thrust_vacuum"]),
  );

  Map<String, dynamic> toMap() => {
    "reusable": reusable == null ? null : reusable,
    "engines": engines == null ? null : engines,
    "fuel_amount_tons": fuelAmountTons == null ? null : fuelAmountTons,
    "burn_time_sec": burnTimeSec == null ? null : burnTimeSec,
    "thrust_sea_level": thrustSeaLevel == null ? null : thrustSeaLevel?.toMap(),
    "thrust_vacuum": thrustVacuum == null ? null : thrustVacuum?.toMap(),
  };
}

class LandingLegs {
  LandingLegs({
    this.number,
    this.material,
  });

  num? number;
  String? material;

  factory LandingLegs.fromMap(Map<String, dynamic> json) => LandingLegs(
    number: json["number"] == null ? null : json["number"],
    material: json["material"] == null ? null : json["material"],
  );

  Map<String, dynamic> toMap() => {
    "number": number == null ? null : number,
    "material": material == null ? null : material,
  };
}

class PayloadWeight {
  PayloadWeight({
    this.id,
    this.name,
    this.kg,
    this.lb,
  });

  String? id;
  String? name;
  num? kg;
  num? lb;

  factory PayloadWeight.fromMap(Map<String, dynamic> json) => PayloadWeight(
    id: json["id"] == null ? null : json["id"],
    name: json["name"] == null ? null : json["name"],
    kg: json["kg"] == null ? null : json["kg"],
    lb: json["lb"] == null ? null : json["lb"],
  );

  Map<String, dynamic> toMap() => {
    "id": id == null ? null : id,
    "name": name == null ? null : name,
    "kg": kg == null ? null : kg,
    "lb": lb == null ? null : lb,
  };
}

class SecondStage {
  SecondStage({
    this.reusable,
    this.engines,
    this.fuelAmountTons,
    this.burnTimeSec,
    this.thrust,
    this.payloads,
  });

  bool? reusable;
  num? engines;
  num? fuelAmountTons;
  num? burnTimeSec;
  Thrust? thrust;
  Payloads? payloads;

  factory SecondStage.fromMap(Map<String, dynamic> json) => SecondStage(
    reusable: json["reusable"] == null ? null : json["reusable"],
    engines: json["engines"] == null ? null : json["engines"],
    fuelAmountTons: json["fuel_amount_tons"] == null ? null : json["fuel_amount_tons"],
    burnTimeSec: json["burn_time_sec"] == null ? null : json["burn_time_sec"],
    thrust: json["thrust"] == null ? null : Thrust.fromMap(json["thrust"]),
    payloads: json["payloads"] == null ? null : Payloads.fromMap(json["payloads"]),
  );

  Map<String, dynamic> toMap() => {
    "reusable": reusable == null ? null : reusable,
    "engines": engines == null ? null : engines,
    "fuel_amount_tons": fuelAmountTons == null ? null : fuelAmountTons,
    "burn_time_sec": burnTimeSec == null ? null : burnTimeSec,
    "thrust": thrust == null ? null : thrust?.toMap(),
    "payloads": payloads == null ? null : payloads?.toMap(),
  };
}

class Payloads {
  Payloads({
    this.option1,
    this.option2,
    this.compositeFairing,
  });

  String? option1;
  String? option2;
  CompositeFairing? compositeFairing;

  factory Payloads.fromMap(Map<String, dynamic> json) => Payloads(
    option1: json["option_1"] == null ? null : json["option_1"],
    option2: json["option_2"] == null ? null : json["option_2"],
    compositeFairing: json["composite_fairing"] == null ? null : CompositeFairing.fromMap(json["composite_fairing"]),
  );

  Map<String, dynamic> toMap() => {
    "option_1": option1 == null ? null : option1,
    "option_2": option2 == null ? null : option2,
    "composite_fairing": compositeFairing == null ? null : compositeFairing?.toMap(),
  };
}

class CompositeFairing {
  CompositeFairing({
    this.height,
    this.diameter,
  });

  Diameter? height;
  Diameter? diameter;

  factory CompositeFairing.fromMap(Map<String, dynamic> json) => CompositeFairing(
    height: json["height"] == null ? null : Diameter.fromMap(json["height"]),
    diameter: json["diameter"] == null ? null : Diameter.fromMap(json["diameter"]),
  );

  Map<String, dynamic> toMap() => {
    "height": height == null ? null : height?.toMap(),
    "diameter": diameter == null ? null : diameter?.toMap(),
  };
}