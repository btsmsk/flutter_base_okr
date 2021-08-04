import 'package:flutter_base_okr/domain/usecase/GetUseCase.dart';
import 'package:flutter_base_okr/domain/usecase/vehicles/get_ships.dart';
import 'package:get/get.dart';

class ShipsController extends GetxController with StateMixin {
  final GetShipsUseCase shipsUseCase;

  ShipsController({required this.shipsUseCase});

  @override
  void onReady() {
    super.onReady();
    getShips();
  }

  Future getShips() async {
    change([], status: RxStatus.loading());

    try {
      final result = await shipsUseCase.execute(None());

      change(result, status: RxStatus.success());
    } catch (e) {
      print(e);
      change([], status: RxStatus.error("Error!"));
    }
  }
}
