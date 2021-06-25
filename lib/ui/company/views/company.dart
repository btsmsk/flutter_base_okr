import 'package:flutter/material.dart';
import 'package:flutter_base_okr/data/models/company/company_info.dart';
import 'package:flutter_base_okr/ui/company/controllers/company_controller.dart';
import 'package:get/get.dart';

class Company extends GetView<CompanyController> {
  @override
  Widget build(BuildContext context) => Scaffold(
        body: controller.obx(
          (state) {
            state as CompanyInfo;
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                SafeArea(
                  top: false,
                  minimum: const EdgeInsets.only(left: 16, right: 16, top: 16),
                  child: Row(
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Text(
                            state.name!,
                            textAlign: TextAlign.center,
                            style: Theme.of(context).textTheme.subtitle1,
                          ),
                        ],
                      ),
                      Text(state.ceo!),
                      Text(state.cto!),
                      Text(state.coo!),
                    ],
                  ),
                ),
              ],
            );
          },
          onError: (error) => Center(
            child: Text(error.toString()),
          ),
          onLoading: const Center(
            child: CircularProgressIndicator(
              color: Colors.black45,
            ),
          ),
        ),
      );
}
