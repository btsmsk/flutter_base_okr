import 'package:flutter_base_okr/domain/usecase/GetUseCase.dart';
import 'package:flutter_base_okr/domain/usecase/vehicles/get_rockets.dart';
import 'package:get/get.dart';

class RocketsController extends GetxController with StateMixin {
  final GetRocketsUseCase rocketsUseCase;
  RocketsController({required this.rocketsUseCase});

  Rx<String> searchQuery = ''.obs;

  @override
  void onReady() {
    super.onReady();
    getRockets();
  }

  Future getRockets() async {
    change([], status: RxStatus.loading());

    try {
      final result = await rocketsUseCase.execute(None());

      change(result, status: RxStatus.success());
    } catch (e) {
      print(e);
      change([], status: RxStatus.error("Error!"));
    }
  }
}