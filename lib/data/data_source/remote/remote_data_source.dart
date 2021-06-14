import 'package:flutter_base_okr/data/response/rocket_list.dart';

mixin RemoteDataSource{
  Future<RocketList> getRockets();
}