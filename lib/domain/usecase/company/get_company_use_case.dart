import 'package:flutter_base_okr/data/repository/company_repository.dart';

class GetCompanyUseCase {
  final CompanyRepository repository;

  GetCompanyUseCase({required this.repository});

  Future run() async => repository.getCompany();
}
