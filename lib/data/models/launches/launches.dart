import 'package:flutter/cupertino.dart';
import 'package:intl/intl.dart';
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

  factory Launches.fromJson(Map<String, dynamic> json) =>
      _$LaunchesFromJson(json);

  Map<String, dynamic> toJson() => _$LaunchesToJson(this);

  Fairings? fairings;
  Links? links;
  @JsonKey(name: "static_fire_date_utc")
  String? staticFireDateUtc;
  @JsonKey(name: "static_fire_date_unix")
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
  @JsonKey(name: "auto_update")
  bool? autoUpdate;
  @JsonKey(name: "launch_library_id")
  String? launchLibraryId;
  List<Failures>? failures;
  @JsonKey(name: "flight_number")
  int? flightNumber;
  String? name;
  @JsonKey(name: "date_utc", fromJson: _parseDateTime)
  DateTime? dateUtc;
  @JsonKey(name: "date_unix")
  int? dateUnix;
  @JsonKey(name: "date_local")
  String? dateLocal;
  @JsonKey(name: "date_precision")
  String? datePrecision;
  bool? upcoming;
  List<Cores>? cores;
  String? id;

  Launches(
      {this.fairings,
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

  String get getShortTentativeTime => DateFormat.Hm().format(dateUtc!);

  String get getTentativeTime =>
      '$getShortTentativeTime ${dateUtc!.timeZoneName}';

  static DateTime? _parseDateTime(String date) => DateTime.tryParse(date);

  String get getTentativeDate {
    switch (datePrecision) {
      case 'hour':
        return DateFormat.yMMMMd().format(dateUtc!);
      case 'day':
        return DateFormat.yMMMMd().format(dateUtc!);
      case 'month':
        return DateFormat.yMMMM().format(dateUtc!);
      case 'quarter':
        return DateFormat.yQQQ().format(dateUtc!);
      case 'half':
        return 'H${dateUtc!.month < 7 ? 1 : 2} ${dateUtc!.year}';
      case 'year':
        return DateFormat.y().format(dateUtc!);
      default:
        return 'date error';
    }
  }

  String getLaunchDate(BuildContext context) {
    switch (datePrecision) {
      case 'hour':
        return "${getTentativeDate} ${getTentativeTime}";
      default:
        return "${getTentativeDate}";
    }
  }
}
