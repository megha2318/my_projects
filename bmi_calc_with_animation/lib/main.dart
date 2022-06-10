import 'package:bmi_calc/screens/final_page.dart';
import 'package:bmi_calc/screens/home_screen.dart';
import 'package:bmi_calc/screens/splash_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: "/splashScreen",
      routes: {
        "/": (context) => HomePage(),
        "/splashScreen": (context) => SplashScreen(),
        "/finalPage": (context) => FinalPage(),
      },
    ),
  );
}
