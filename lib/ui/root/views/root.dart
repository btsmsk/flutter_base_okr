import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_base_okr/routes/app_routes.dart';
import 'package:flutter_base_okr/ui/auth/views/login.dart';
import 'package:flutter_base_okr/ui/dashboard/views/dashboard.dart';
import 'package:flutter_base_okr/ui/root/controllers/root_controller.dart';
import 'package:get/get.dart';

class Root extends GetView<RootController> {

  @override
  Widget build(BuildContext context) => controller.obx(
        (state) => state == Routes.LOGIN ? LoginPage() : Dashboard(),
        onLoading: Center(
          child: Container(
            color: Colors.white,
          ),
        ),
      );
}
