import 'package:json_annotation/json_annotation.dart';

part 'launch_failure_details.g.dart';

@JsonSerializable()
class LaunchFailureDetails {
  factory LaunchFailureDetails.fromJson(Map<String, dynamic> json) =>
      _$LaunchFailureDetailsFromJson(json);

  Map<String, dynamic> toJson(instance) => _$LaunchFailureDetailsToJson(this);

  int? time;
  int? altitude;
  String? reason;

  LaunchFailureDetails({this.time, this.altitude, this.reason});
}
