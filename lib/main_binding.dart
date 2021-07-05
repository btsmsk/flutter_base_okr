import 'package:get/get.dart';

import 'data/core/network/http_client.dart';

class MainBinding extends Bindings {
  @override
  void dependencies() {
    Get.put<HttpClient>(HttpClient(), permanent: true);
  }
}
