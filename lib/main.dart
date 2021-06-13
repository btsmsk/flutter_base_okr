import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_base_okr/data/repository.dart';
import 'package:flutter_base_okr/stores/rockets/rockets_store.dart';
import 'package:flutter_base_okr/ui/home/home.dart';
import 'package:provider/provider.dart';

import 'di/components/injection.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  configureInjection();
  return runZonedGuarded(() async {
    runApp(MyApp());
  }, (error, stack) {
    print(stack);
    print(error);
  });
}

class MyApp extends StatelessWidget {
  final RocketStore _rocketStore = RocketStore(getIt<Repository>());

  @override
  Widget build(BuildContext context) {
    return Provider<RocketStore>(
      create: (_) => _rocketStore,
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: HomeScreen(),
      ),
    );
  }
}
