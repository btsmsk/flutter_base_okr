import 'package:flutter_base_okr/data/repository/auth_repository.dart';

import '../GetUseCase.dart';

class SignUpUseCase extends GetUseCase<Params, dynamic> {
  final AuthRepository authRepository;

  SignUpUseCase({required this.authRepository});

  @override
  Future<dynamic> execute(Params params) => authRepository
      .signUp(params.email, params.password, username: params.userName);
}

class Params {
  String email;
  String password;
  String? userName;

  Params({required this.email, required this.password, this.userName});
}
