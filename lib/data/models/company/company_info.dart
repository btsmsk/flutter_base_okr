import 'package:json_annotation/json_annotation.dart';

part 'company_info.g.dart';

@JsonSerializable()
class CompanyInfo {
  factory CompanyInfo.fromJson(Map<String, dynamic> json) => _$CompanyInfoFromJson(json);

  Map<String, dynamic> toJson(CompanyInfo instance) => _$CompanyInfoToJson(this);

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

  CompanyInfo(
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
