import 'package:flutter_base_okr/data/core/network/endpoints.dart';
import 'package:flutter_base_okr/data/core/network/http_client.dart';
import 'package:dio/dio.dart';
import 'package:flutter_base_okr/data/models/api_response.dart';
import 'package:flutter_base_okr/data/models/launches/launches.dart';

class UpcomingRemoteDataSource {
  HttpClient dioClient;

  UpcomingRemoteDataSource({required this.dioClient});

  Future<List<Launches>> getUpcomingLaunches() async {
    final response = await dioClient.dio.get(Endpoints.upcoming);
    return Launches.getLaunchModelList(response.data);
  }
}
