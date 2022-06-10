import 'package:flutter/material.dart';
import 'package:intro_screen_media_booster/screens/home_screen.dart';
import 'package:intro_screen_media_booster/screens/intro_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();

  SharedPreferences prefs = await SharedPreferences.getInstance();
  bool isIntroScreen = prefs.getBool("isSignUp") ?? false;

  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: (isIntroScreen == false) ? "/" : "/homeScreen",
      routes: {
        "/" : (context)=> IntroScreen(),
        "/homeScreen" : (context)=> HomeScreen(),
      },
    ),
  );
}


