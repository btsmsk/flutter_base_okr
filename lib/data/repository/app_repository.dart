import 'package:flutter_base_okr/data/data_source/remote/remote_data_source.dart';
import 'package:flutter_base_okr/domain/repository/repository.dart';
import 'package:flutter_base_okr/data/response/rocket_list.dart';
import 'package:injectable/injectable.dart';

@Singleton(as: Repository)
class AppRepository implements Repository {
  final RemoteDataSource remoteDataSource;

  AppRepository(this.remoteDataSource);

  @override
  Future<RocketList> getRockets() async => remoteDataSource.getRockets();
}