import 'package:flutter/material.dart';
import 'package:shared_pref_and_json_parsing/screens/carousel_slider.dart';
import 'package:shared_pref_and_json_parsing/screens/stagger_grid_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
     routes: {
        "/": (context) => StaggeredPage(),
        "slider": (context) => CarouselSliderScreen(),
     },
    );
  }
}
