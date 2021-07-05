import 'package:dio/dio.dart';
import 'package:flutter_base_okr/data/core/network/endpoints.dart';
import 'package:flutter_base_okr/data/core/network/interceptors/http_logging_interceptor.dart';

class HttpClient {

  static final HttpClient _instance = HttpClient._constructor();

  static BaseOptions baseOptions = BaseOptions(
    baseUrl: Endpoints.baseUrl,
    connectTimeout: 1000,
    receiveTimeout: 1000,
  );

  final Dio _dio = Dio(baseOptions);

  Dio get dio => _dio;

  HttpClient._constructor() {
    _dio.interceptors.add(HttpLoggingInterceptor());
  }

  factory HttpClient() => _instance;
}

