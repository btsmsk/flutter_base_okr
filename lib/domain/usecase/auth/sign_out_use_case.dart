import 'package:flutter_base_okr/data/repository/auth_repository.dart';

import '../GetUseCase.dart';

class SignOutUseCase extends GetUseCase<None, void> {
  final AuthRepository authRepository;

  SignOutUseCase({required this.authRepository});

  @override
  Future<void> execute(None params) => authRepository.signOut();
}
