import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_base_okr/data/models/auth/sign_in_type.dart';
import 'package:flutter_base_okr/domain/usecase/GetUseCase.dart';
import 'package:flutter_base_okr/domain/usecase/auth/get_user_use_case.dart'
    as getUser;
import 'package:flutter_base_okr/domain/usecase/auth/sign_in_use_case.dart'
    as signIn;
import 'package:flutter_base_okr/domain/usecase/auth/sign_out_use_case.dart'
    as signOut;
import 'package:flutter_base_okr/domain/usecase/auth/sign_up_use_case.dart'
    as signUp;
import 'package:flutter_base_okr/routes/app_routes.dart';
import 'package:get/get.dart';

class AuthController extends GetxController {
  getUser.GetUserUseCase getUserUseCase;
  signUp.SignUpUseCase signUpUseCase;
  signIn.SignInUseCase signInUseCase;
  signOut.SignOutUseCase signOutUseCase;

  AuthController(
      {required this.getUserUseCase,
      required this.signUpUseCase,
      required this.signInUseCase,
      required this.signOutUseCase});

  TextEditingController emailController =
      TextEditingController(); // to handle sign in /up
  TextEditingController passwordController =
      TextEditingController(); // to handle sign in /up
  Rx<User?> user = Rx<User?>(null);

  @override
  void onReady() async {
    user.value = await getUserUseCase.execute(None());
    //user.bindStream(authService.onAuthChanged());
    super.onInit();
  }

  @override
  void onClose() {
    emailController.dispose();
    passwordController.dispose();
    super.onClose();
  }

  handleAuthChanged(user) {
    if (user == null) {
      Get.offAllNamed(Routes.LOGIN);
    } else {
      Get.offAllNamed(Routes.DASHBOARD);
    }
  }

  handleSignIn(SignInType type) async {
    if (type == SignInType.EMAIL_PASSWORD) {
      if (emailController.text == "" || passwordController.text == "") {
        Get.snackbar(
          "Error",
          "Empty email or password",
        );
        return;
      }
    }

    Get.snackbar("Signing In", "Loading",
        showProgressIndicator: true,
        snackPosition: SnackPosition.BOTTOM,
        duration: Duration(seconds: 5));
    try {
      final User? user = await signInUseCase.execute(signIn.Params(
          email: emailController.text.trim(),
          password: passwordController.text.trim(),
          type: type));
      handleAuthChanged(user);
    } catch (e) {
      Get.back();
      Get.defaultDialog(
          title: "Error",
          middleText: e.obs.value.toString(),
          actions: [
            TextButton(
              onPressed: () {
                Get.back();
              },
              child: Text("Close"),
            ),
          ]);
      print(e);
    }
  }

  handleSignUp() async {
    if (emailController.text == "" || passwordController.text == "") {
      Get.snackbar(
        "Error",
        "Empty email or password",
      );
      return;
    }
    Get.snackbar("Signing Up", "Loading",
        showProgressIndicator: true,
        snackPosition: SnackPosition.BOTTOM,
        duration: Duration(seconds: 5));

    try {
      final User? user = await signUpUseCase.execute(signUp.Params(
          email: emailController.text.trim(),
          password: passwordController.text.trim()));
      emailController.clear();
      passwordController.clear();
      handleAuthChanged(user);
    } catch (e) {
      Get.back();
      Get.defaultDialog(
          title: "Error",
          middleText: e.obs.value.toString(),
          actions: [
            TextButton(
              onPressed: () {
                Get.back();
              },
              child: Text("Close"),
            ),
          ]);
      print(e);
    }
  }

  handleSignOut() {
    signOutUseCase.execute(None());
  }
}
