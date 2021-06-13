import 'package:flutter_base_okr/data/remote/apis/rockets_api.dart';
import 'package:flutter_base_okr/data/repository.dart';
import 'package:injectable/injectable.dart';

@module
abstract class LocalModule {
  @factoryMethod
  Repository provideRepository(RocketsApi postApi) {
    return Repository(postApi);
  }
}
