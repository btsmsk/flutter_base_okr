import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_base_okr/ui/view/app.dart';
import 'di/di.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await configureInjection();
  return runZonedGuarded(() async {
    runApp(App());
  }, (error, stack) {
    print(stack);
    print(error);
  });
}

