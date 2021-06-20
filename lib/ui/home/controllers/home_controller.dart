import 'package:flutter_base_okr/domain/usecase/get_rockets.dart';
import 'package:get/get.dart';

class HomeController extends GetxController with StateMixin {
  final GetRocketsUseCase _rocketsUseCase;

  HomeController(this._rocketsUseCase);

  @override
  void onInit() {
    super.onInit();
    getRockets();
  }

  Future getRockets() async {
    change([], status: RxStatus.loading());

    try {
      final result = await _rocketsUseCase.run();

      change(result, status: RxStatus.success());
    } catch (e) {
      print(e);
      change([], status: RxStatus.error("Error!"));
    }
  }
}
