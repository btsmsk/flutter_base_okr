// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'company_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CompanyInfo _$CompanyInfoFromJson(Map<String, dynamic> json) {
  return CompanyInfo(
    name: json['name'] as String?,
    founder: json['founder'] as String?,
    founded: json['founded'] as int?,
    employees: json['employees'] as int?,
    vehicles: json['vehicles'] as int?,
    launchSites: json['launch_sites'] as int?,
    testSites: json['test_sites'] as int?,
    ceo: json['ceo'] as String?,
    cto: json['cto'] as String?,
    coo: json['coo'] as String?,
    ctoPropulsion: json['cto_propulsion'] as String?,
    valuation: json['valuation'] as int?,
    headquarters: json['headquarters'] as Map<String, dynamic>?,
    links: json['links'] as Map<String, dynamic>?,
    summary: json['summary'] as String?,
  )
    ..city = json['city'] as String?
    ..state = json['state'] as String?
    ..fullName = json['fullName'] as String?
    ..details = json['details'] as String?
    ..id = json['id'] as String?;
}

Map<String, dynamic> _$CompanyInfoToJson(CompanyInfo instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('name', instance.name);
  writeNotNull('founder', instance.founder);
  writeNotNull('founded', instance.founded);
  writeNotNull('employees', instance.employees);
  writeNotNull('vehicles', instance.vehicles);
  writeNotNull('launch_sites', instance.launchSites);
  writeNotNull('test_sites', instance.testSites);
  writeNotNull('ceo', instance.ceo);
  writeNotNull('cto', instance.cto);
  writeNotNull('coo', instance.coo);
  writeNotNull('cto_propulsion', instance.ctoPropulsion);
  writeNotNull('valuation', instance.valuation);
  writeNotNull('headquarters', instance.headquarters);
  writeNotNull('links', instance.links);
  writeNotNull('summary', instance.summary);
  writeNotNull('city', instance.city);
  writeNotNull('state', instance.state);
  writeNotNull('fullName', instance.fullName);
  writeNotNull('details', instance.details);
  writeNotNull('id', instance.id);
  return val;
}
