import 'package:flutter_base_okr/data/remote/apis/rockets_api.dart';
import 'package:flutter_base_okr/models/rocket_list.dart';

class Repository {
  final RocketsApi _rocketsApi;

  // constructor
  Repository(this._rocketsApi);

  Future<RocketList> getRockets() async {
    return await _rocketsApi.getRockets();
  }
}
