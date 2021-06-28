import 'package:json_annotation/json_annotation.dart';

part 'cores.g.dart';
@JsonSerializable()
class Cores {

	factory Cores.fromJson(Map<String, dynamic> json) => _$CoresFromJson(json);
	Map<String, dynamic> toJson() => _$CoresToJson(this);

  String? core;
  int? flight;
  bool? gridfins;
  bool? legs;
  bool? reused;
  bool? landingAttempt;
  bool? landingSuccess;
  String? landingType;
  String? landpad;

  Cores({
      this.core, 
      this.flight, 
      this.gridfins, 
      this.legs, 
      this.reused, 
      this.landingAttempt, 
      this.landingSuccess, 
      this.landingType, 
      this.landpad});
}