import 'package:json_annotation/json_annotation.dart';

part 'company.g.dart';

@JsonSerializable()
class Company {
  factory Company.fromJson(Map<String, dynamic> json) =>
      _$CompanyFromJson(json);

  Map<String, dynamic> toJson(instance) => _$CompanyToJson(this);

  String? name;
  String? founder;
  int? founded;
  int? employees;
  int? vehicles;
  @JsonKey(name: "launch_sites")
  int? launchSites;
  @JsonKey(name: "test_sites")
  int? testSites;
  String? ceo;
  String? cto;
  String? coo;
  @JsonKey(name: "cto_propulsion")
  String? ctoPropulsion;
  int? valuation;
  Map<String, dynamic>? headquarters;
  Map<String, dynamic>? links;
  String? summary;

  Company(
      {this.name,
      this.founder,
      this.founded,
      this.employees,
      this.vehicles,
      this.launchSites,
      this.testSites,
      this.ceo,
      this.cto,
      this.coo,
      this.ctoPropulsion,
      this.valuation,
      this.headquarters,
      this.links,
      this.summary});
}
