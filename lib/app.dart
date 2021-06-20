// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_base_okr/widget/main_bottom_navigation.dart';
// import 'package:flutter_base_okr/widget/main_bottom_navigation_provider.dart';
// import 'package:provider/provider.dart';
//
// class App extends StatelessWidget {
//   final MainBottomNavigationProvider _appViewModel =
//       MainBottomNavigationProvider();
//
//   @override
//   Widget build(BuildContext context) {
//     return MultiProvider(
//         providers: [
//           Provider<MainBottomNavigationProvider>(create: (_) => _appViewModel)
//         ],
//         child: MaterialApp(
//             debugShowCheckedModeBanner: false,
//             title: 'Flutter Demo',
//             theme: ThemeData(
//               primarySwatch: Colors.blue,
//             ),
//             home: MainBottomNavigationBar(
//               onTabChangeListener: (index) => {},
//             )));
//   }
// }
