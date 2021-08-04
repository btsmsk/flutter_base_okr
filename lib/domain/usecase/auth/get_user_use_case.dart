import 'package:flutter_base_okr/data/repository/auth_repository.dart';
import 'package:flutter_base_okr/domain/usecase/GetUseCase.dart';

class GetUserUseCase extends GetUseCase<None, dynamic>{
  final AuthRepository authRepository;

  GetUserUseCase({required this.authRepository});

  @override
  Future<dynamic> execute(None params) => authRepository.getCurrentUser();
}