import 'package:flutter/material.dart';
import 'package:flutter_base_okr/data/models/auth/sign_in_type.dart';
import 'package:flutter_base_okr/routes/app_routes.dart';
import 'package:flutter_base_okr/ui/auth/controllers/auth_controller.dart';
import 'package:flutter_base_okr/utils/dimens.dart';
import 'package:get/get.dart';

class LoginPage extends GetView<AuthController> {
  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: const Text('Login'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Stack(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextField(
                    controller: controller.emailController,
                    decoration: const InputDecoration(hintText: 'Email'),
                  ),
                  TextField(
                    controller: controller.passwordController,
                    decoration: const InputDecoration(hintText: 'Password'),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        TextButton(
                          style: ButtonStyle(
                              padding: MaterialStateProperty.all(
                                  EdgeInsets.all(8.toDouble())),
                              backgroundColor:
                                  MaterialStateProperty.all(Colors.blue)),
                          onPressed: () {
                            controller.handleSignIn(SignInType.EMAIL_PASSWORD);
                          },
                          child: const Text(
                            "Sign In",
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                        TextButton(
                          style: ButtonStyle(
                              padding: MaterialStateProperty.all(
                                  EdgeInsets.all(8.toDouble())),
                              backgroundColor: MaterialStateProperty.all(
                                  Colors.primaries[0])),
                          onPressed: () {
                            controller.handleSignIn(SignInType.GOOGLE);
                          },
                          child: const Text(
                            "SignIn with Google",
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ],
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Get.toNamed(Routes.REGISTER);
                    },
                    child: const Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text('No account ? Register Here!'),
                    ),
                  ),
                ],
              ),
              Positioned(
                child: Align(
                  alignment: FractionalOffset.bottomCenter,
                  child: TextButton(
                    style: ButtonStyle(
                        padding: MaterialStateProperty.all(
                            EdgeInsets.all(Dimens.SIZE_18))),
                    onPressed: () {
                      Get.offAndToNamed(Routes.DASHBOARD);
                    },
                    child: const Text(
                      "CONTINUE WITHOUT LOGIN",
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      );
}
