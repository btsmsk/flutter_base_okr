
import 'dart:convert';

import 'package:flutter_base_okr/data/models/vehicles/vehicle.dart';

DragonVehicle dragonVehicleFromMap(String str) =>
    DragonVehicle.fromMap(json.decode(str));

String dragonVehicleToMap(DragonVehicle data) => json.encode(data.toMap());

List<DragonVehicle> dragonsFromJson(str) =>
    List<DragonVehicle>.from(str.map((x) => DragonVehicle.fromMap(x)));

class DragonVehicle extends Vehicle {
  DragonVehicle({
    this.id,
    this.name,
    this.type,
    this.active,
    this.crewCapacity,
    this.sidewallAngleDeg,
    this.orbitDurationYr,
    this.dryMassKg,
    this.dryMassLb,
    this.firstFlight,
    this.heatShield,
    this.thrusters,
    this.launchPayloadMass,
    this.launchPayloadVol,
    this.returnPayloadMass,
    this.returnPayloadVol,
    this.pressurizedCapsule,
    this.trunk,
    this.heightWTrunk,
    this.diameter,
    this.flickrImages,
    this.wikipedia,
    this.description,
  }) : super(
            id: id,
            name: name,
            type: type,
            active: active,
            description: description,
            url: wikipedia,
            height: heightWTrunk,
            diameter: diameter,
            mass: launchPayloadMass,
            firstFlight: firstFlight,
            photos: flickrImages);

  String? id;
  String? name;
  String? type;
  bool? active;
  num? crewCapacity;
  num? sidewallAngleDeg;
  num? orbitDurationYr;
  num? dryMassKg;
  num? dryMassLb;
  DateTime? firstFlight;
  HeatShield? heatShield;
  List<Thruster>? thrusters;
  Mass? launchPayloadMass;
  LaunchPayloadVol? launchPayloadVol;
  Mass? returnPayloadMass;
  LaunchPayloadVol? returnPayloadVol;
  PressurizedCapsule? pressurizedCapsule;
  Trunk? trunk;
  Diameter? heightWTrunk;
  Diameter? diameter;
  List<String>? flickrImages;
  String? wikipedia;
  String? description;

  factory DragonVehicle.fromMap(Map<String, dynamic> json) => DragonVehicle(
        id: json["id"] == null ? null : json["id"],
        name: json["name"] == null ? null : json["name"],
        type: json["type"] == null ? null : json["type"],
        active: json["active"] == null ? null : json["active"],
        crewCapacity:
            json["crew_capacity"] == null ? null : json["crew_capacity"],
        sidewallAngleDeg: json["sidewall_angle_deg"] == null
            ? null
            : json["sidewall_angle_deg"],
        orbitDurationYr: json["orbit_duration_yr"] == null
            ? null
            : json["orbit_duration_yr"],
        dryMassKg: json["dry_mass_kg"] == null ? null : json["dry_mass_kg"],
        dryMassLb: json["dry_mass_lb"] == null ? null : json["dry_mass_lb"],
        firstFlight: json["first_flight"] == null
            ? null
            : DateTime.parse(json["first_flight"]),
        heatShield: json["heat_shield"] == null
            ? null
            : HeatShield.fromMap(json["heat_shield"]),
        thrusters: json["thrusters"] == null
            ? null
            : List<Thruster>.from(
                json["thrusters"].map((x) => Thruster.fromMap(x))),
        launchPayloadMass: json["launch_payload_mass"] == null
            ? null
            : Mass.fromMap(json["launch_payload_mass"]),
        launchPayloadVol: json["launch_payload_vol"] == null
            ? null
            : LaunchPayloadVol.fromMap(json["launch_payload_vol"]),
        returnPayloadMass: json["return_payload_mass"] == null
            ? null
            : Mass.fromMap(json["return_payload_mass"]),
        returnPayloadVol: json["return_payload_vol"] == null
            ? null
            : LaunchPayloadVol.fromMap(json["return_payload_vol"]),
        pressurizedCapsule: json["pressurized_capsule"] == null
            ? null
            : PressurizedCapsule.fromMap(json["pressurized_capsule"]),
        trunk: json["trunk"] == null ? null : Trunk.fromMap(json["trunk"]),
        heightWTrunk: json["height_w_trunk"] == null
            ? null
            : Diameter.fromMap(json["height_w_trunk"]),
        diameter: json["diameter"] == null
            ? null
            : Diameter.fromMap(json["diameter"]),
        flickrImages: json["flickr_images"] == null
            ? null
            : List<String>.from(json["flickr_images"].map((x) => x)),
        wikipedia: json["wikipedia"] == null ? null : json["wikipedia"],
        description: json["description"] == null ? null : json["description"],
      );

  Map<String, dynamic> toMap() => {
        "id": id == null ? null : id,
        "name": name == null ? null : name,
        "type": type == null ? null : type,
        "active": active == null ? null : active,
        "crew_capacity": crewCapacity == null ? null : crewCapacity,
        "sidewall_angle_deg":
            sidewallAngleDeg == null ? null : sidewallAngleDeg,
        "orbit_duration_yr": orbitDurationYr == null ? null : orbitDurationYr,
        "dry_mass_kg": dryMassKg == null ? null : dryMassKg,
        "dry_mass_lb": dryMassLb == null ? null : dryMassLb,
        "first_flight": firstFlight == null
            ? null
            : "${firstFlight?.year.toString().padLeft(4, '0')}-${firstFlight?.month.toString().padLeft(2, '0')}-${firstFlight?.day.toString().padLeft(2, '0')}",
        "heat_shield": heatShield == null ? null : heatShield?.toMap(),
        "thrusters": thrusters == null
            ? null
            : List<dynamic>.from(thrusters!.map((x) => x.toMap())),
        "launch_payload_mass":
            launchPayloadMass == null ? null : launchPayloadMass?.toMap(),
        "launch_payload_vol":
            launchPayloadVol == null ? null : launchPayloadVol?.toMap(),
        "return_payload_mass":
            returnPayloadMass == null ? null : returnPayloadMass?.toMap(),
        "return_payload_vol":
            returnPayloadVol == null ? null : returnPayloadVol?.toMap(),
        "pressurized_capsule":
            pressurizedCapsule == null ? null : pressurizedCapsule?.toMap(),
        "trunk": trunk == null ? null : trunk?.toMap(),
        "height_w_trunk": heightWTrunk == null ? null : heightWTrunk?.toMap(),
        "diameter": diameter == null ? null : diameter?.toMap(),
        "flickr_images": flickrImages == null
            ? null
            : List<dynamic>.from(flickrImages!.map((x) => x)),
        "wikipedia": wikipedia == null ? null : wikipedia,
        "description": description == null ? null : description,
      };
}

class HeatShield {
  HeatShield({
    this.material,
    this.sizeMeters,
    this.tempDegrees,
    this.devPartner,
  });

  String? material;
  num? sizeMeters;
  num? tempDegrees;
  String? devPartner;

  factory HeatShield.fromMap(Map<String, dynamic> json) => HeatShield(
        material: json["material"] == null ? null : json["material"],
        sizeMeters:
            json["size_meters"] == null ? null : json["size_meters"].toDouble(),
        tempDegrees: json["temp_degrees"] == null ? null : json["temp_degrees"],
        devPartner: json["dev_partner"] == null ? null : json["dev_partner"],
      );

  Map<String, dynamic> toMap() => {
        "material": material == null ? null : material,
        "size_meters": sizeMeters == null ? null : sizeMeters,
        "temp_degrees": tempDegrees == null ? null : tempDegrees,
        "dev_partner": devPartner == null ? null : devPartner,
      };
}

class LaunchPayloadVol {
  LaunchPayloadVol({
    this.cubicMeters,
    this.cubicFeet,
  });

  num? cubicMeters;
  num? cubicFeet;

  factory LaunchPayloadVol.fromMap(Map<String, dynamic> json) =>
      LaunchPayloadVol(
        cubicMeters: json["cubic_meters"] == null ? null : json["cubic_meters"],
        cubicFeet: json["cubic_feet"] == null ? null : json["cubic_feet"],
      );

  Map<String, dynamic> toMap() => {
        "cubic_meters": cubicMeters == null ? null : cubicMeters,
        "cubic_feet": cubicFeet == null ? null : cubicFeet,
      };
}

class PressurizedCapsule {
  PressurizedCapsule({
    this.payloadVolume,
  });

  LaunchPayloadVol? payloadVolume;

  factory PressurizedCapsule.fromMap(Map<String, dynamic> json) =>
      PressurizedCapsule(
        payloadVolume: json["payload_volume"] == null
            ? null
            : LaunchPayloadVol.fromMap(json["payload_volume"]),
      );

  Map<String, dynamic> toMap() => {
        "payload_volume": payloadVolume == null ? null : payloadVolume?.toMap(),
      };
}

class Thruster {
  Thruster({
    this.type,
    this.amount,
    this.pods,
    this.fuel1,
    this.fuel2,
    this.isp,
    this.thrust,
  });

  String? type;
  num? amount;
  num? pods;
  String? fuel1;
  String? fuel2;
  num? isp;
  Thrust? thrust;

  factory Thruster.fromMap(Map<String, dynamic> json) => Thruster(
        type: json["type"] == null ? null : json["type"],
        amount: json["amount"] == null ? null : json["amount"],
        pods: json["pods"] == null ? null : json["pods"],
        fuel1: json["fuel_1"] == null ? null : json["fuel_1"],
        fuel2: json["fuel_2"] == null ? null : json["fuel_2"],
        isp: json["isp"] == null ? null : json["isp"],
        thrust: json["thrust"] == null ? null : Thrust.fromMap(json["thrust"]),
      );

  Map<String, dynamic> toMap() => {
        "type": type == null ? null : type,
        "amount": amount == null ? null : amount,
        "pods": pods == null ? null : pods,
        "fuel_1": fuel1 == null ? null : fuel1,
        "fuel_2": fuel2 == null ? null : fuel2,
        "isp": isp == null ? null : isp,
        "thrust": thrust == null ? null : thrust?.toMap(),
      };
}

class Trunk {
  Trunk({
    this.trunkVolume,
    this.cargo,
  });

  LaunchPayloadVol? trunkVolume;
  Cargo? cargo;

  factory Trunk.fromMap(Map<String, dynamic> json) => Trunk(
        trunkVolume: json["trunk_volume"] == null
            ? null
            : LaunchPayloadVol.fromMap(json["trunk_volume"]),
        cargo: json["cargo"] == null ? null : Cargo.fromMap(json["cargo"]),
      );

  Map<String, dynamic> toMap() => {
        "trunk_volume": trunkVolume == null ? null : trunkVolume?.toMap(),
        "cargo": cargo == null ? null : cargo?.toMap(),
      };
}

class Cargo {
  Cargo({
    this.solarArray,
    this.unpressurizedCargo,
  });

  int? solarArray;
  bool? unpressurizedCargo;

  factory Cargo.fromMap(Map<String, dynamic> json) => Cargo(
        solarArray: json["solar_array"] == null ? null : json["solar_array"],
        unpressurizedCargo: json["unpressurized_cargo"] == null
            ? null
            : json["unpressurized_cargo"],
      );

  Map<String, dynamic> toMap() => {
        "solar_array": solarArray == null ? null : solarArray,
        "unpressurized_cargo":
            unpressurizedCargo == null ? null : unpressurizedCargo,
      };
}
