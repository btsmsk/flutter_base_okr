import 'package:json_annotation/json_annotation.dart';

import 'cores.dart';
import 'failures.dart';
import 'fairings.dart';
import 'links.dart';

part 'launches.g.dart';

@JsonSerializable()
class Launches {

  static List<Launches> getLaunchModelList(body) =>
      body.map((i) => Launches.fromJson(i)).toList().cast<Launches>();

	factory Launches.fromJson(Map<String, dynamic> json) => _$LaunchesFromJson(json);

	Map<String, dynamic> toJson() => _$LaunchesToJson(this);

  Fairings? fairings;
  Links? links;
  String? staticFireDateUtc;
  int? staticFireDateUnix;
  bool? tbd;
  bool? net;
  int? window;
  String? rocket;
  bool? success;
  String? details;
  List<String>? crew;
  List<String>? ships;
  List<String>? capsules;
  List<String>? payloads;
  String? launchpad;
  bool? autoUpdate;
  String? launchLibraryId;
  List<Failures>? failures;
  int? flightNumber;
  String? name;
  String? dateUtc;
  int? dateUnix;
  String? dateLocal;
  String? datePrecision;
  bool? upcoming;
  List<Cores>? cores;
  String? id;

  Launches({
      this.fairings, 
      this.links, 
      this.staticFireDateUtc, 
      this.staticFireDateUnix, 
      this.tbd, 
      this.net, 
      this.window, 
      this.rocket, 
      this.success, 
      this.details, 
      this.crew, 
      this.ships, 
      this.capsules, 
      this.payloads, 
      this.launchpad, 
      this.autoUpdate, 
      this.launchLibraryId, 
      this.failures, 
      this.flightNumber, 
      this.name, 
      this.dateUtc, 
      this.dateUnix, 
      this.dateLocal, 
      this.datePrecision, 
      this.upcoming, 
      this.cores, 
      this.id});
}