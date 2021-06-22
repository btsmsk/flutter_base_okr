import 'package:flutter_base_okr/domain/usecase/vehicles/get_dragons.dart';
import 'package:get/get.dart';

class DragonsController extends GetxController with StateMixin {
  final GetDragonsUseCase dragonsUseCase;

  DragonsController({required this.dragonsUseCase});

  @override
  void onReady() {
    super.onReady();
    getDragons();
  }

  Future getDragons() async {
    change([], status: RxStatus.loading());

    try {
      final result = await dragonsUseCase.run();

      change(result, status: RxStatus.success());
    } catch (e) {
      print(e);
      change([], status: RxStatus.error("Error!"));
    }
  }
}