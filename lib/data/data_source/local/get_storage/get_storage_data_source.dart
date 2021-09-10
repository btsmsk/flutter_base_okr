import 'package:get_storage/get_storage.dart';

import 'local_cache_data_source.dart';

class GetStorageDataSource extends LocalCacheDataSource {
  static final GetStorageDataSource _dataSource =
      GetStorageDataSource._constructor();

  factory GetStorageDataSource() => _dataSource;

  GetStorageDataSource._constructor();

  final GetStorage _preferences = GetStorage();

  @override
  Future<void> setInt(String key, int value) async =>
      await _preferences.write(key, value);

  @override
  int? getInt(String key) => _preferences.read<int>(key);

  @override
  String? getString(String key) => _preferences.read(key);

  @override
  Future<void> setString(String key, String value) async =>
      await _preferences.write(key, value);

  @override
  bool? getBool(String key) => _preferences.read(key);

  @override
  Future<void> setBool(String key, bool value) async =>
      await _preferences.write(key, value);

  @override
  Future<void> deleteCache(String key) async => await _preferences.remove(key);
}
