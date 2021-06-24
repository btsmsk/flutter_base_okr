import 'package:json_annotation/json_annotation.dart';

part 'fairings.g.dart';

@JsonSerializable(explicitToJson: true)
class Fairings {
  factory Fairings.fromJson(Map<String, dynamic> json) =>
      _$FairingsFromJson(json);

  Map<String, dynamic> toJson() => _$FairingsToJson(this);

  bool? reused;
  @JsonKey(name: "recovery_attempt")
  bool? recoveryAttempt;
  bool? recovered;
  List<String>? ship;

  Fairings(this.reused, this.recoveryAttempt, this.recovered, this.ship);
}
