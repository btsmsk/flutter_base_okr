// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'launch_site.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LaunchSite _$LaunchSiteFromJson(Map<String, dynamic> json) {
  return LaunchSite(
    siteId: json['site_id'] as String?,
    siteName: json['site_name'] as String?,
    siteNameLong: json['site_name_long'] as String?,
  );
}

Map<String, dynamic> _$LaunchSiteToJson(LaunchSite instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('site_id', instance.siteId);
  writeNotNull('site_name', instance.siteName);
  writeNotNull('site_name_long', instance.siteNameLong);
  return val;
}
