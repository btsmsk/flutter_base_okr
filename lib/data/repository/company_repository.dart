import 'package:flutter_base_okr/data/data_source/remote/company/company_remote_data_source.dart';
import 'package:flutter_base_okr/data/models/company/company_info.dart';

class CompanyRepository {
  final CompanyRemoteDataSource companyRemoteDataSource;

  CompanyRepository({required this.companyRemoteDataSource});

  Future<CompanyInfo> getCompany() async => companyRemoteDataSource.getCompany();
}
