import 'package:flutter_base_okr/data/repository.dart';
import 'package:flutter_base_okr/models/rocket_list.dart';
import 'package:flutter_base_okr/stores/errors/error_store.dart';
import 'package:injectable/injectable.dart';
import 'package:mobx/mobx.dart';

part 'rockets_store.g.dart';

@Injectable()
class RocketStore = _RocketStore with _$RocketStore;

abstract class _RocketStore with Store {
  // repository instance
  late Repository _repository;

  // store for handling errors
  final ErrorStore errorStore = ErrorStore();

  // constructor:---------------------------------------------------------------
  _RocketStore(Repository repository) : this._repository = repository;

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
    final future = _repository.getRockets();
    fetchRocketsFuture = ObservableFuture(future);

    future.then((rocketList) {
      this.rocketList = rocketList;
    }).catchError((error) {
      errorStore.errorMessage = error;
    });
  }
}
