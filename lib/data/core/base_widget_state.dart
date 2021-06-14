import 'package:flutter/material.dart';
import 'package:flutter_base_okr/di/di.dart';
import 'package:mobx/mobx.dart';

abstract class BaseWidgetState<Widget extends StatefulWidget,
    StoreController extends Store> extends State<Widget> {
  final StoreController storeController = getIt<StoreController>();
}
