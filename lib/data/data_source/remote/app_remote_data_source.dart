import 'package:flutter_base_okr/data/data_source/remote/remote_data_source.dart';
import 'package:flutter_base_okr/data/service/remote_service.dart';
import 'package:flutter_base_okr/data/response/rocket_list.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: RemoteDataSource)
class AppRemoteDataSource implements RemoteDataSource {
  final RemoteService _remoteService;

  AppRemoteDataSource(@Named('default') this._remoteService);

  @override
  Future<RocketList> getRockets() async {
    try {
      final res = await _remoteService.getRockets();
      return RocketList.fromJson(res);
    } catch (e) {
      print(e.toString());
      throw e;
    }
  }
}
