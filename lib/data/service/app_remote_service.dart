import 'package:flutter_base_okr/data/core/endpoints.dart';
import 'package:flutter_base_okr/data/dio_client/dio_client.dart';
import 'package:flutter_base_okr/data/service/remote_service.dart';
import 'package:injectable/injectable.dart';

@Named('default')
@Injectable(as: RemoteService)
class AppRemoteService implements RemoteService {
  final DioClient _dioClient;

  AppRemoteService(this._dioClient);

  @override
  Future getRockets() async => _dioClient.get(Endpoints.getRockets);
}
