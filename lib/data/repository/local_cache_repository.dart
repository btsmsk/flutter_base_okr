import 'package:flutter_base_okr/data/data_source/local/sharedpreferences/local_cache_data_source/local_cache_data_source.dart';

class LocalCacheRepository {
  final LocalCacheDataSource localCacheDataSource;

  LocalCacheRepository({required this.localCacheDataSource});

  Future<bool> setInt(String key, int value) async {
    try {
      return await localCacheDataSource.setInt(key, value) ?? false;
    } catch (e) {
      return false;
    }
  }

  Future<int> getInt(String key, int defaultValue) async {
    try {
      int? result = await localCacheDataSource.getInt(key);
      return result ??= defaultValue;
    } catch (e) {
      return defaultValue;
    }
  }

  Future<bool> setString(String key, String value) async {
    try {
      return await localCacheDataSource.setString(key, value) ?? false;
    } catch (e) {
      return false;
    }
  }

  Future<String> getString(String key, String defaultValue) async {
    try {
      String? result = await localCacheDataSource.getString(key);
      return result ??= defaultValue;
    } catch (e) {
      return defaultValue;
    }
  }

  Future<bool> setBool(String key, bool value) async {
    try {
      return await localCacheDataSource.setBool(key, value) ?? false;
    } catch (e) {
      return false;
    }
  }

  Future<bool> getBool(String key, bool defaultValue) async {
    try {
      bool? result = await localCacheDataSource.getBool(key);
      return result ??= defaultValue;
    } catch (e) {
      return defaultValue;
    }
  }

  Future<bool> deleteCache(String key) async {
    try {
      return await localCacheDataSource.deleteCache(key) ?? false;
    } catch (e) {
      return false;
    }
  }
}
