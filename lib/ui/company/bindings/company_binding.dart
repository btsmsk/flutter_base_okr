import 'package:flutter_base_okr/data/data_source/remote/company/achievements_remote_data_source.dart';
import 'package:flutter_base_okr/data/data_source/remote/company/company_remote_data_source.dart';
import 'package:flutter_base_okr/data/repository/achievements_repository.dart';
import 'package:flutter_base_okr/data/repository/company_repository.dart';
import 'package:flutter_base_okr/domain/usecase/company/get_achievements_use_case.dart';
import 'package:flutter_base_okr/domain/usecase/company/get_company_use_case.dart';
import 'package:flutter_base_okr/ui/company/controllers/company_controller.dart';
import 'package:get/get.dart';

class CompanyBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<CompanyRepository>(() => CompanyRepository(companyRemoteDataSource: CompanyRemoteDataSource()));
    Get.lazyPut<AchievementsRepository>(() => AchievementsRepository(achievementsRemoteDataSource: AchievementsRemoteDataSource()));

    Get.lazyPut<GetCompanyUseCase>(() => GetCompanyUseCase(repository: Get.find()));
    Get.lazyPut<GetAchievementsUseCase>(() => GetAchievementsUseCase(repository: Get.find()));

    Get.lazyPut<CompanyController>(() => CompanyController(companyUseCase: Get.find(), getAchievementsUseCase: Get.find()));
  }
}
