import 'package:dio/dio.dart';
import 'package:flutter_base_okr/domain/usecase/GetUseCase.dart';
import 'package:flutter_base_okr/domain/usecase/launches/upcoming/get_upcoming_launches_use_case.dart';
import 'package:get/get.dart';

class UpcomingController extends GetxController with StateMixin {
  final GetUpcomingLaunchesUseCase upcomingLaunches;

  UpcomingController({required this.upcomingLaunches});

  @override
  void onReady() {
    super.onReady();
    getUpcomingLaunches();
  }

  Future getUpcomingLaunches() async {
    change([], status: RxStatus.loading());
    final result = upcomingLaunches.execute(None());

    result
        .then((value) => {change(value, status: RxStatus.success())})
        .onError<DioError>((error, stackTrace) =>
    {
      change(error, status: RxStatus.error())
    });
  }
}
