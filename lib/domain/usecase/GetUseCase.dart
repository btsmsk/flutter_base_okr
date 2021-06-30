
abstract class GetUseCase<P , T> {
  Future<T> execute(P params);
}

class None {}