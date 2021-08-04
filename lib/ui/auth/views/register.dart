import 'package:flutter/material.dart';
import 'package:flutter_base_okr/ui/auth/controllers/auth_controller.dart';
import 'package:get/get.dart';

class RegisterPage extends GetView<AuthController> {
  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text("Register"),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                controller: controller.emailController,
                decoration: InputDecoration(hintText: "Email"),
              ),
              TextField(
                controller: controller.passwordController,
                decoration: InputDecoration(hintText: "Password"),
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
                        controller.handleSignUp();
                      },
                      child: const Text(
                        'Sign Up',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      );
}
