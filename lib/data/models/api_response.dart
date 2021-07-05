import 'package:dio/dio.dart';

class ApiResponse<T> {
  T? data;

  Status? status;

  DioError? error;

  ApiResponse({this.data, this.status, this.error});

  static ApiResponse success<T>(T? data) =>
      ApiResponse(data: data, status: Status.SUCCESS, error: null);

  static ApiResponse fail<T>(DioError error) =>
      ApiResponse(data: null, status: Status.FAIL, error: error);
}


enum Status { LOADING, SUCCESS, FAIL }
