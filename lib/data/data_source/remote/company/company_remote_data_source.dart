import 'dart:async';

import 'package:flutter_base_okr/data/core/endpoints.dart';
import 'package:flutter_base_okr/data/models/company/company_info.dart';
import 'package:get/get.dart';

class CompanyRemoteDataSource extends GetConnect {
  Future<CompanyInfo> getCompany() async {
    final completer = Completer<CompanyInfo>();

    final response = await get<CompanyInfo>(Endpoints.company, decoder: (body) => CompanyInfo.fromJson(body));

    completer.complete(response.body);

    if (response.hasError) {
      throw Exception('Api Error!');
    }
    return completer.future;
  }
}
