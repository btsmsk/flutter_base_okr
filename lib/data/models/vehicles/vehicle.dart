abstract class Vehicle {
  final String? id;
  final String? name;
  final String? type;
  final String? description;
  final String? url;
  final Diameter? height;
  final Diameter? diameter;
  final Mass? mass;
  final bool? active;
  final DateTime? firstFlight;
  final List<String>? photos;

  const Vehicle({
    this.id,
    this.name,
    this.type,
    this.description,
    this.url,
    this.height,
    this.diameter,
    this.mass,
    this.active,
    this.firstFlight,
    this.photos,
  });
}

class Diameter {
  Diameter({
    this.meters,
    this.feet,
  });

  num? meters;
  num? feet;

  factory Diameter.fromMap(Map<String, dynamic> json) => Diameter(
    meters: json["meters"] == null ? null : json["meters"],
    feet: json["feet"] == null ? null : json["feet"],
  );

  Map<String, dynamic> toMap() => {
    "meters": meters == null ? null : meters,
    "feet": feet == null ? null : feet,
  };
}

class Mass {
  Mass({
    this.kg,
    this.lb,
  });

  num? kg;
  num? lb;

  factory Mass.fromMap(Map<String, dynamic> json) => Mass(
    kg: json["kg"] == null ? null : json["kg"],
    lb: json["lb"] == null ? null : json["lb"],
  );

  Map<String, dynamic> toMap() => {
    "kg": kg == null ? null : kg,
    "lb": lb == null ? null : lb,
  };
}

class Thrust {
  Thrust({
    this.kN,
    this.lbf,
  });

  num? kN;
  num? lbf;

  factory Thrust.fromMap(Map<String, dynamic> json) => Thrust(
    kN: json["kN"] == null ? null : json["kN"],
    lbf: json["lbf"] == null ? null : json["lbf"],
  );

  Map<String, dynamic> toMap() => {
    "kN": kN == null ? null : kN,
    "lbf": lbf == null ? null : lbf,
  };
}

