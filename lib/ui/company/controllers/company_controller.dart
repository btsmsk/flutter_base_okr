import 'package:flutter_base_okr/data/models/company/achievement.dart';
import 'package:flutter_base_okr/domain/usecase/company/get_achievements_use_case.dart';
import 'package:flutter_base_okr/domain/usecase/company/get_company_use_case.dart';
import 'package:get/get.dart';

class CompanyController extends GetxController with StateMixin {
  CompanyController({required this.companyUseCase, required this.getAchievementsUseCase});

  final GetCompanyUseCase companyUseCase;
  final GetAchievementsUseCase getAchievementsUseCase;

  RxList<Achievement?>? achievements = RxList.empty();

  @override
  void onReady() {
    super.onReady();
    getCompany();
    getAchievements();
  }

  Future getCompany() async {
    change(null, status: RxStatus.loading());

    try {
      final result = await companyUseCase.run();

      change(result, status: RxStatus.success());
    } catch (e) {
      print(e);
      change(null, status: RxStatus.error("Error!"));
    }
  }

  Future getAchievements() async {
    try {
      achievements?.assignAll(await getAchievementsUseCase.run());
    } catch (e) {
      print(e);
    }
  }
}
