import 'package:flutter_base_okr/data/data_source/remote/auth/auth_remote_data_source.dart';
import 'package:flutter_base_okr/data/repository/auth_repository.dart';
import 'package:flutter_base_okr/domain/usecase/auth/get_user_use_case.dart';
import 'package:flutter_base_okr/domain/usecase/auth/sign_in_use_case.dart';
import 'package:flutter_base_okr/domain/usecase/auth/sign_out_use_case.dart';
import 'package:flutter_base_okr/domain/usecase/auth/sign_up_use_case.dart';
import 'package:flutter_base_okr/ui/auth/controllers/auth_controller.dart';
import 'package:get/get.dart';

class AuthBinding extends Bindings {
  @override
  void dependencies() {
    Get.put<AuthRemoteDataSource>(AuthRemoteDataSource());
    Get.put<AuthRepository>(AuthRepository(authRemoteDataSource: Get.find()));
    Get.lazyPut<GetUserUseCase>(
        () => GetUserUseCase(authRepository: Get.find()));
    Get.lazyPut<SignInUseCase>(() => SignInUseCase(authRepository: Get.find()));
    Get.lazyPut<SignUpUseCase>(() => SignUpUseCase(authRepository: Get.find()));
    Get.lazyPut<SignOutUseCase>(
        () => SignOutUseCase(authRepository: Get.find()));
    Get.lazyPut<AuthController>(() => AuthController(
        getUserUseCase: Get.find(),
        signUpUseCase: Get.find(),
        signInUseCase: Get.find(),
        signOutUseCase: Get.find()));
  }
}
