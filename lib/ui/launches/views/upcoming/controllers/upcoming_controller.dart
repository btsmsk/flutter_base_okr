import 'package:flutter_base_okr/domain/usecase/upcoming_launches_use_case.dart';
import 'package:get/get.dart';

class UpcomingController extends GetxController with StateMixin {
  final UpcomingLaunchesUseCase upcomingLaunches;

  UpcomingController({required this.upcomingLaunches});

  @override
  void onReady() {
    super.onReady();
    getUpcomingLaunches();
  }

  Future getUpcomingLaunches() async {
    change([], status: RxStatus.loading());

    try {
      var result = await upcomingLaunches.run();
      change(result, status: RxStatus.success());
    } catch (e) {
      change([], status: RxStatus.error(e.toString()));
    }
  }
}
