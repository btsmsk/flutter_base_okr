import 'package:flutter_base_okr/domain/usecase/company/get_company_use_case.dart';
import 'package:get/get.dart';

class CompanyController extends GetxController with StateMixin {
  final GetCompanyUseCase companyUseCase;

  CompanyController({required this.companyUseCase});

  @override
  void onReady() {
    super.onReady();
    getCompany();
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
}
