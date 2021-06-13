import 'dart:convert';

Rocket rocketFromMap(String str) => Rocket.fromMap(json.decode(str));

String rocketToMap(Rocket data) => json.encode(data.toMap());

class Rocket {
  Rocket({
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
    this.flickrImages,
    this.wikipedia,
    this.description,
    this.rocketId,
    this.rocketName,
    this.rocketType,
  });

  int? id;
  bool? active;
  int? stages;
  int? boosters;
  int? costPerLaunch;
  int? successRatePct;
  DateTime? firstFlight;
  String? country;
  String? company;
  Diameter? height;
  Diameter? diameter;
  Mass? mass;
  List<String>? flickrImages;
  String? wikipedia;
  String? description;
  String? rocketId;
  String? rocketName;
  String? rocketType;

  factory Rocket.fromMap(Map<String, dynamic> json) => Rocket(
    id: json["id"],
    active: json["active"],
    stages: json["stages"],
    boosters: json["boosters"],
    costPerLaunch: json["cost_per_launch"],
    successRatePct: json["success_rate_pct"],
    firstFlight: DateTime.parse(json["first_flight"]),
    country: json["country"],
    company: json["company"],
    height: Diameter.fromMap(json["height"]),
    diameter: Diameter.fromMap(json["diameter"]),
    mass: Mass.fromMap(json["mass"]),
    flickrImages: List<String>.from(json["flickr_images"]),
    wikipedia: json["wikipedia"],
    description: json["description"],
    rocketId: json["rocket_id"],
    rocketName: json["rocket_name"],
    rocketType: json["rocket_type"],
  );

  Map<String, dynamic> toMap() => {
    "id": id,
    "active": active,
    "stages": stages,
    "boosters": boosters,
    "cost_per_launch": costPerLaunch,
    "success_rate_pct": successRatePct,
    "first_flight": "${firstFlight?.year.toString().padLeft(4, '0')}-${firstFlight?.month.toString().padLeft(2, '0')}-${firstFlight?.day.toString().padLeft(2, '0')}",
    "country": country,
    "company": company,
    "height": height?.toMap(),
    "diameter": diameter?.toMap(),
    "mass": mass?.toMap(),
    "flickr_images": flickrImages,
    "wikipedia": wikipedia,
    "description": description,
    "rocket_id": rocketId,
    "rocket_name": rocketName,
    "rocket_type": rocketType,
  };
}

class Diameter {
  Diameter({
    this.meters,
    this.feet,
  });

  double? meters;
  double? feet;

  factory Diameter.fromMap(Map<String, dynamic> json) => Diameter(
    meters: json["meters"].toDouble(),
    feet: json["feet"].toDouble(),
  );

  Map<String, dynamic> toMap() => {
    "meters": meters,
    "feet": feet,
  };
}

class Mass {
  Mass({
    this.kg,
    this.lb,
  });

  int? kg;
  int? lb;

  factory Mass.fromMap(Map<String, dynamic> json) => Mass(
    kg: json["kg"],
    lb: json["lb"],
  );

  Map<String, dynamic> toMap() => {
    "kg": kg,
    "lb": lb,
  };
}
