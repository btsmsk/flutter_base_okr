import 'package:flutter_base_okr/data/response/rocket_list.dart';

abstract class Repository {
  Future<RocketList> getRockets();
}