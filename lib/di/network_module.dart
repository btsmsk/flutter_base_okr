import 'package:dio/dio.dart';
import 'package:flutter_base_okr/data/core/endpoints.dart';
import 'package:injectable/injectable.dart';

@module
abstract class NetworkModule {
  @factoryMethod
  Dio provideDio() {
    final dio = Dio();

    dio
      ..options.baseUrl = Endpoints.baseUrl
      ..options.headers = {'Content-Type': 'application/json; charset=utf-8'}
      ..interceptors.add(LogInterceptor(
        request: true,
        responseBody: true,
        requestBody: true,
        requestHeader: true,
      ))
      ..interceptors.add(
        InterceptorsWrapper(
          onRequest: (RequestOptions options,
              RequestInterceptorHandler handler) async {
            return handler.next(options);
          },
        ),
      );

    return dio;
  }
}
