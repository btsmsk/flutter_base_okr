import 'package:flutter_base_okr/data/response/rocket_list.dart';
import 'package:flutter_base_okr/domain/usecase/get_rockets.dart';
import 'package:flutter_base_okr/stores/errors/error_store.dart';
import 'package:injectable/injectable.dart';
import 'package:mobx/mobx.dart';

part 'home_store.g.dart';

@Injectable()
class HomeStore = _HomeStore with _$HomeStore;

abstract class _HomeStore with Store {
  // use case
  final GetRocketsUseCase _getRocketsUseCase;

  // store for handling errors
  final ErrorStore errorStore = ErrorStore();

  // constructor:---------------------------------------------------------------
  _HomeStore(this._getRocketsUseCase);

  // store variables:-----------------------------------------------------------
  static ObservableFuture<RocketList?> emptyPostResponse =
      ObservableFuture.value(null);

  @observable
  ObservableFuture<RocketList?> fetchRocketsFuture =
      ObservableFuture<RocketList?>(emptyPostResponse);

  @observable
  RocketList? rocketList;

  @observable
  bool success = false;

  @computed
  bool get loading => fetchRocketsFuture.status == FutureStatus.pending;

  // actions:-------------------------------------------------------------------
  @action
  Future getRockets() async {
    final future = _getRocketsUseCase.run();
    fetchRocketsFuture = ObservableFuture(future);

    future.then((rocketList) {
      this.rocketList = rocketList;
    }).catchError((error) {
      errorStore.errorMessage = error;
    });
  }
}
