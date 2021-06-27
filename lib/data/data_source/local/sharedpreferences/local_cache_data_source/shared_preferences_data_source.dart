import 'package:flutter_base_okr/data/data_source/local/sharedpreferences/local_cache_data_source/local_cache_data_source.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferencesDataSource extends LocalCacheDataSource {
  static final SharedPreferencesDataSource _dataSource =
      SharedPreferencesDataSource._internal();

  factory SharedPreferencesDataSource() => _dataSource;

  SharedPreferencesDataSource._internal();

  static SharedPreferences? _preferences;

  Future<SharedPreferences?> get preferences async =>
      _preferences ??= await SharedPreferences.getInstance();

  @override
  Future<bool?> setInt(String key, int value) async {
    final SharedPreferences? pref = await preferences;
    return await pref?.setInt(key, value);
  }

  @override
  Future<int?> getInt(String key) async {
    final SharedPreferences? pref = await preferences;
    return pref?.getInt(key);
  }

  @override
  Future<String?> getString(String key) async {
    final SharedPreferences? pref = await preferences;
    return pref?.getString(key);
  }

  @override
  Future<bool?> setString(String key, String value) async {
    final SharedPreferences? pref = await preferences;
    return await pref?.setString(key, value);
  }

  @override
  Future<bool?> getBool(String key) async {
    final SharedPreferences? pref = await preferences;
    return pref?.getBool(key);
  }

  @override
  Future<bool?> setBool(String key, bool value) async {
    final SharedPreferences? pref = await preferences;
    return await pref?.setBool(key, value);
  }

  @override
  Future<bool?> deleteCache(String key) async {
    final SharedPreferences? pref = await preferences;
    return await pref?.remove(key);
  }
}
