import 'package:flutter_base_okr/domain/usecase/GetUseCase.dart';
import 'package:flutter_base_okr/domain/usecase/auth/get_user_use_case.dart';
import 'package:flutter_base_okr/routes/app_routes.dart';
import 'package:get/get.dart';

class RootController extends GetxController with StateMixin {
  final GetUserUseCase getUserUseCase;

  RootController({required this.getUserUseCase});

  @override
  void onReady() {
    getInitialRoute();
    super.onInit();
  }

  Future getInitialRoute() async {
    change([], status: RxStatus.loading());
    try {
      final user = await getUserUseCase.execute(None());
      if (user == null) {
        change(Routes.LOGIN, status: RxStatus.success());
      } else {
        change(Routes.DASHBOARD, status: RxStatus.success());
      }
    } catch (e) {
      print(e);
      change([], status: RxStatus.error("Root Error!"));
    }
  }
}
