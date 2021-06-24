
import 'package:flutter_base_okr/data/models/launches/rocket.dart';
import 'package:flutter_base_okr/data/models/launches/telemetry.dart';
import 'package:json_annotation/json_annotation.dart';

import 'launch_failure_details.dart';
import 'launch_site.dart';
import 'links.dart';
import 'timeline.dart';

part 'launches.g.dart';

@JsonSerializable(explicitToJson: true)
class Launches {

  static List<Launches> getLaunchModelList(body) =>
      body.map((i) => Launches.fromJson(i)).toList().cast<Launches>();

  factory Launches.fromJson(Map<String, dynamic> json) =>
      _$LaunchesFromJson(json);

  Map<String, dynamic> toJson() => _$LaunchesToJson(this);

  @JsonKey(name: "flight_number")
  int? flightNumber;
  @JsonKey(name: "mission_name")
  String? missionName;
  @JsonKey(name: "mission_id")
  List<String>? missionId;
  bool? upcoming;
  @JsonKey(name: "launch_year")
  String? launchYear;
  @JsonKey(name: "launch_date_unix")
  int? launchDateUnix;
  @JsonKey(name: "launch_date_utc")
  String? launchDateUtc;
  @JsonKey(name: "launch_date_local")
  String? launchDateLocal;
  @JsonKey(name: "is_tentative")
  bool? isTentative;
  @JsonKey(name: "tentative_max_precision")
  String? tentativeMaxPrecision;
  bool? tbd;
  @JsonKey(name: "launch_window")
  int? launchWindow;
  Rocket? rocket;
  List<String>? ships;
  Telemetry? telemetry;
  @JsonKey(name: "launch_site")
  LaunchSite launchSite;
  @JsonKey(name: "launch_success")
  bool? launchSuccess;
  @JsonKey(name: "launch_failure_details")
  LaunchFailureDetails? launchFailureDetails;
  Links? links;
  String? details;
  @JsonKey(name: "static_fire_date_utc")
  String? staticFireDateUtc;
  @JsonKey(name: "static_fire_date_unix")
  int? staticFireDateUnix;
  Timeline? timeline;

  Launches(
      this.flightNumber,
      this.missionName,
      this.missionId,
      this.upcoming,
      this.launchYear,
      this.launchDateUnix,
      this.launchDateUtc,
      this.launchDateLocal,
      this.isTentative,
      this.tentativeMaxPrecision,
      this.tbd,
      this.launchWindow,
      this.rocket,
      this.ships,
      this.telemetry,
      this.launchSite,
      this.launchSuccess,
      this.launchFailureDetails,
      this.links,
      this.details,
      this.staticFireDateUtc,
      this.staticFireDateUnix,
      this.timeline);
}
