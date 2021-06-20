
import 'dart:convert';

import 'package:flutter_base_okr/data/models/vehicles/vehicle.dart';

RoadsterVehicle roadsterVehicleFromMap(String str) => RoadsterVehicle.fromMap(json.decode(str));

String roadsterVehicleToMap(RoadsterVehicle data) => json.encode(data.toMap());

List<RoadsterVehicle> roadstersFromJson(str) =>
    List<RoadsterVehicle>.from(str.map((x) => RoadsterVehicle.fromMap(x)));

class RoadsterVehicle extends Vehicle {
  RoadsterVehicle({
    this.name,
    this.launchDateUtc,
    this.launchDateUnix,
    this.launchMassKg,
    this.launchMassLbs,
    this.noradId,
    this.epochJd,
    this.orbitType,
    this.apoapsisAu,
    this.periapsisAu,
    this.semiMajorAxisAu,
    this.eccentricity,
    this.inclination,
    this.longitude,
    this.periapsisArg,
    this.periodDays,
    this.speedKph,
    this.speedMph,
    this.earthDistanceKm,
    this.earthDistanceMi,
    this.marsDistanceKm,
    this.marsDistanceMi,
    this.flickrImages,
    this.wikipedia,
    this.video,
    this.details,
  }) : super (
      id: name.toString(),
      name: name,
      type: 'roadster',
      description: details,
      url: wikipedia,
      mass: launchMassKg,
      firstFlight: launchDateUtc,
      photos: flickrImages
  );

  String? name;
  DateTime? launchDateUtc;
  num? launchDateUnix;
  Mass? launchMassKg;
  Mass? launchMassLbs;
  num? noradId;
  num? epochJd;
  String? orbitType;
  num? apoapsisAu;
  num? periapsisAu;
  num? semiMajorAxisAu;
  num? eccentricity;
  num? inclination;
  num? longitude;
  num? periapsisArg;
  num? periodDays;
  num? speedKph;
  num? speedMph;
  num? earthDistanceKm;
  num? earthDistanceMi;
  num? marsDistanceKm;
  num? marsDistanceMi;
  List<String>? flickrImages;
  String? wikipedia;
  String? video;
  String? details;

  factory RoadsterVehicle.fromMap(Map<String, dynamic> json) => RoadsterVehicle(
    name: json["name"] == null ? null : json["name"],
    launchDateUtc: json["launch_date_utc"] == null ? null : DateTime.parse(json["launch_date_utc"]),
    launchDateUnix: json["launch_date_unix"] == null ? null : json["launch_date_unix"],
    launchMassKg: json["launch_mass_kg"] == null ? null : Mass(kg: json["launch_mass_kg"]),
    launchMassLbs: json["launch_mass_lbs"] == null ? null : Mass(lb: json["launch_mass_lbs"]),
    noradId: json["norad_id"] == null ? null : json["norad_id"],
    epochJd: json["epoch_jd"] == null ? null : json["epoch_jd"].toDouble(),
    orbitType: json["orbit_type"] == null ? null : json["orbit_type"],
    apoapsisAu: json["apoapsis_au"] == null ? null : json["apoapsis_au"].toDouble(),
    periapsisAu: json["periapsis_au"] == null ? null : json["periapsis_au"].toDouble(),
    semiMajorAxisAu: json["semi_major_axis_au"] == null ? null : json["semi_major_axis_au"].toDouble(),
    eccentricity: json["eccentricity"] == null ? null : json["eccentricity"].toDouble(),
    inclination: json["inclination"] == null ? null : json["inclination"].toDouble(),
    longitude: json["longitude"] == null ? null : json["longitude"].toDouble(),
    periapsisArg: json["periapsis_arg"] == null ? null : json["periapsis_arg"].toDouble(),
    periodDays: json["period_days"] == null ? null : json["period_days"].toDouble(),
    speedKph: json["speed_kph"] == null ? null : json["speed_kph"].toDouble(),
    speedMph: json["speed_mph"] == null ? null : json["speed_mph"].toDouble(),
    earthDistanceKm: json["earth_distance_km"] == null ? null : json["earth_distance_km"].toDouble(),
    earthDistanceMi: json["earth_distance_mi"] == null ? null : json["earth_distance_mi"].toDouble(),
    marsDistanceKm: json["mars_distance_km"] == null ? null : json["mars_distance_km"].toDouble(),
    marsDistanceMi: json["mars_distance_mi"] == null ? null : json["mars_distance_mi"].toDouble(),
    flickrImages: json["flickr_images"] == null ? null : List<String>.from(json["flickr_images"].map((x) => x)),
    wikipedia: json["wikipedia"] == null ? null : json["wikipedia"],
    video: json["video"] == null ? null : json["video"],
    details: json["details"] == null ? null : json["details"],
  );

  Map<String, dynamic> toMap() => {
    "name": name == null ? null : name,
    "launch_date_utc": launchDateUtc == null ? null : launchDateUtc?.toIso8601String(),
    "launch_date_unix": launchDateUnix == null ? null : launchDateUnix,
    "launch_mass_kg": launchMassKg == null ? null : launchMassKg,
    "launch_mass_lbs": launchMassLbs == null ? null : launchMassLbs,
    "norad_id": noradId == null ? null : noradId,
    "epoch_jd": epochJd == null ? null : epochJd,
    "orbit_type": orbitType == null ? null : orbitType,
    "apoapsis_au": apoapsisAu == null ? null : apoapsisAu,
    "periapsis_au": periapsisAu == null ? null : periapsisAu,
    "semi_major_axis_au": semiMajorAxisAu == null ? null : semiMajorAxisAu,
    "eccentricity": eccentricity == null ? null : eccentricity,
    "inclination": inclination == null ? null : inclination,
    "longitude": longitude == null ? null : longitude,
    "periapsis_arg": periapsisArg == null ? null : periapsisArg,
    "period_days": periodDays == null ? null : periodDays,
    "speed_kph": speedKph == null ? null : speedKph,
    "speed_mph": speedMph == null ? null : speedMph,
    "earth_distance_km": earthDistanceKm == null ? null : earthDistanceKm,
    "earth_distance_mi": earthDistanceMi == null ? null : earthDistanceMi,
    "mars_distance_km": marsDistanceKm == null ? null : marsDistanceKm,
    "mars_distance_mi": marsDistanceMi == null ? null : marsDistanceMi,
    "flickr_images": flickrImages == null ? null : List<dynamic>.from(flickrImages!.map((x) => x)),
    "wikipedia": wikipedia == null ? null : wikipedia,
    "video": video == null ? null : video,
    "details": details == null ? null : details,
  };
}
