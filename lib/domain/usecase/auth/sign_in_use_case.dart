import 'package:flutter_base_okr/data/models/auth/sign_in_type.dart';
import 'package:flutter_base_okr/data/repository/auth_repository.dart';

import '../GetUseCase.dart';

class SignInUseCase extends GetUseCase<Params, dynamic> {
  final AuthRepository authRepository;

  SignInUseCase({required this.authRepository});

  @override
  Future<dynamic> execute(Params params) async {
    switch (params.type) {
      case SignInType.EMAIL_PASSWORD:
        return authRepository.signInWithEmailAndPassword(
            params.email ?? '', params.password ?? '');
      case SignInType.GOOGLE:
        return authRepository.signInWithGoogle();
    }
  }
}

class Params {
  String? email;
  String? password;
  SignInType type;

  Params({this.email, this.password, required this.type});
}