import 'package:flutter_base_okr/data/data_source/remote/company/company_remote_data_source.dart';
import 'package:flutter_base_okr/data/repository/company_repository.dart';
import 'package:flutter_base_okr/domain/usecase/company/get_company_use_case.dart';
import 'package:flutter_base_okr/ui/company/controllers/company_controller.dart';
import 'package:get/get.dart';

class CompanyBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<CompanyRepository>(() => CompanyRepository(companyRemoteDataSource: CompanyRemoteDataSource()));
    Get.lazyPut<GetCompanyUseCase>(() => GetCompanyUseCase(repository: Get.find()));
    Get.lazyPut<CompanyController>(() => CompanyController(companyUseCase: Get.find()));
  }
}
