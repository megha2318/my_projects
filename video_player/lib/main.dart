import 'package:flutter/material.dart';
import 'package:mediabooster_video_player/utils/routes.dart';
import 'package:mediabooster_video_player/utils/routes_map.dart';

void main() {
  runApp(
      MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: AppRoutes.homeScreen,
        routes: routes,
      ),
  );
}

