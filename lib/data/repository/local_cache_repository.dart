import 'package:flutter_base_okr/data/data_source/local/get_storage/local_cache_data_source.dart';

class LocalCacheRepository {
  final LocalCacheDataSource localCacheDataSource;

  LocalCacheRepository({required this.localCacheDataSource});

  Future<void> setInt(String key, int value) async =>
      await localCacheDataSource.setInt(key, value);

  int getInt(String key, int defaultValue) {
    try {
      int? result = localCacheDataSource.getInt(key);
      return result ??= defaultValue;
    } catch (e) {
      return defaultValue;
    }
  }

  Future<void> setString(String key, String value) async =>
      await localCacheDataSource.setString(key, value);

  String getString(String key, String defaultValue) {
    try {
      String? result = localCacheDataSource.getString(key);
      return result ??= defaultValue;
    } catch (e) {
      return defaultValue;
    }
  }

  Future<void> setBool(String key, bool value) async =>
      await localCacheDataSource.setBool(key, value);

  bool getBool(String key, bool defaultValue) {
    try {
      bool? result = localCacheDataSource.getBool(key);
      return result ??= defaultValue;
    } catch (e) {
      return defaultValue;
    }
  }

  Future<void> deleteCache(String key) async =>
      await localCacheDataSource.deleteCache(key);
}
