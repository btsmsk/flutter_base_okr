import 'package:flutter_base_okr/data/response/rocket_list.dart';
import 'package:flutter_base_okr/domain/repository/repository.dart';
import 'package:injectable/injectable.dart';

@Injectable()
class GetRocketsUseCase {
  final Repository repository;

  GetRocketsUseCase(this.repository);

  Future<RocketList> run() async => repository.getRockets();
}
