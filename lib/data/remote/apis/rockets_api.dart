import 'package:flutter_base_okr/data/remote/dio_client.dart';
import 'package:flutter_base_okr/data/remote/constants/endpoints.dart';
import 'package:flutter_base_okr/models/rocket_list.dart';
import 'package:injectable/injectable.dart';

@Singleton()
class RocketsApi{
  // dio instance
  final DioClient _dioClient;

  // injecting dio instance
  RocketsApi(this._dioClient);

  Future<RocketList> getRockets() async {
    try {
      final res = await _dioClient.get(Endpoints.getRockets);
      return RocketList.fromJson(res);
    } catch (e) {
      print(e.toString());
      throw e;
    }
  }
}
