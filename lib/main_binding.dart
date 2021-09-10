import 'package:flutter_base_okr/data/data_source/local/get_storage/get_storage_data_source.dart';
import 'package:get/get.dart';

import 'data/core/network/http_client.dart';
import 'data/repository/local_cache_repository.dart';

class MainBinding extends Bindings {
  @override
  void dependencies() {
    Get.put<HttpClient>(HttpClient(), permanent: true);
    Get.put<LocalCacheRepository>(
        LocalCacheRepository(localCacheDataSource: GetStorageDataSource()),
        permanent: true);
  }
}
