import 'package:flutter/material.dart';
import 'package:media_booster_pr2_adv_f/utils/routes.dart';
import 'package:media_booster_pr2_adv_f/utils/routes_map.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: AppRoutes.homeScreen,
      routes: routes,
    );
  }
}

