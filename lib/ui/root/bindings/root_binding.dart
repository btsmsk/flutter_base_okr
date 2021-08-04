import 'package:flutter_base_okr/data/data_source/remote/auth/auth_remote_data_source.dart';
import 'package:flutter_base_okr/data/repository/auth_repository.dart';
import 'package:flutter_base_okr/ui/auth/bindings/auth_binding.dart';
import 'package:flutter_base_okr/ui/dashboard/bindings/dashboard_binding.dart';
import 'package:flutter_base_okr/ui/root/controllers/root_controller.dart';
import 'package:get/get.dart';

class RootBinding extends Bindings {
  @override
  void dependencies() {
    AuthBinding().dependencies();
    Get.lazyPut<RootController>(
        () => RootController(getUserUseCase: Get.find()));
    DashboardBinding().dependencies();
  }
}
