import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:outcaster_pr1_adv_f/utils/route_map.dart';
import 'package:outcaster_pr1_adv_f/utils/routs.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return (
        MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: appRoutes.settingUiScreen,
      routes: routes,
    ));
  }
}
