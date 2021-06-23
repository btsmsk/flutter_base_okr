import 'package:json_annotation/json_annotation.dart';

part 'launches.g.dart';

@JsonSerializable(explicitToJson: true)
class Launches {
  static List<Launches> getLaunchModelList(dynamic body) =>
      body.map((i) => Launches.fromJson(i)).toList().cast<Launches>();

  factory Launches.fromJson(Map<String, dynamic> json) =>
      _$LaunchesFromJson(json);

  Map<String, dynamic> toJson(instance) => _$LaunchesToJson(this);

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
  Map<String, dynamic>? rocket;
  List<String>? ships;
  Map<String, dynamic>? telemetry;
  @JsonKey(name: "launch_site")
  Map<String, dynamic>? launchSite;
  @JsonKey(name: "launch_success")
  bool? launchSuccess;
  @JsonKey(name: "launch_failure_details")
  Map<String, dynamic>? launchFailureDetails;
  Map<String, dynamic>? links;
  String? details;
  @JsonKey(name: "static_fire_date_utc")
  String? staticFireDateUtc;
  @JsonKey(name: "static_fire_date_unix")
  int? staticFireDateUnix;
  Map<String, dynamic>? timeline;

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
