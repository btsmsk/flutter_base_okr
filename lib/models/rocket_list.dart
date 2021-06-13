
import 'package:flutter_base_okr/models/rocket.dart';

class RocketList {
  final List<Rocket>? rockets;

  RocketList({
    this.rockets,
  });

  factory RocketList.fromJson(List<dynamic> json) {
    List<Rocket> rockets = <Rocket>[];
    rockets = json.map((post) => Rocket.fromMap(post)).toList();

    return RocketList(
      rockets: rockets,
    );
  }
}