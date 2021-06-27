import 'package:flutter/material.dart';
import 'package:flutter_base_okr/ui/home/controllers/home_controller.dart';
import 'package:flutter_base_okr/ui/widgets/row/card_cell.dart';
import 'package:flutter_base_okr/ui/widgets/row/row_container.dart';
import 'package:flutter_base_okr/ui/widgets/row/row_item.dart';
import 'package:flutter_base_okr/utils/dimens.dart';
import 'package:get/get.dart';

class HomeScreen extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) => Scaffold(
        body: Center(
          child: Container(
            alignment: Alignment.center,
            child: CardCell.body(
              context,
              title: 'Title',
              child: RowContainer(
                children: [
                  RowItem.text(
                    'title',
                    'description',
                    titleStyle: const TextStyle(
                        color: Colors.black45,
                        fontSize: Dimens.MEDIUM,
                        fontWeight: FontWeight.bold),
                    descriptionStyle: const TextStyle(
                        color: Colors.black38,
                        fontSize: Dimens.MEDIUM,
                        fontWeight: FontWeight.normal),
                    textOverflow: TextOverflow.clip,
                    startIcon: const IconProperties(
                        icon: Icons.cancel,
                        color: Colors.red,
                        iconSize: Dimens.XXLARGE),
                    endIcon: const IconProperties(
                        icon: Icons.forward,
                        color: Colors.blue,
                        iconSize: Dimens.XXLARGE),
                  ),
                  RowItem.text(
                    'title2',
                    'description2',
                    titleStyle: const TextStyle(
                        color: Colors.black45,
                        fontSize: Dimens.MEDIUM,
                        fontWeight: FontWeight.bold),
                    descriptionStyle: const TextStyle(
                        color: Colors.black38,
                        fontSize: Dimens.MEDIUM,
                        fontWeight: FontWeight.normal),
                    textOverflow: TextOverflow.ellipsis,
                  ),
                ],
              ),
            ),
          ),
        ),
      );
}
