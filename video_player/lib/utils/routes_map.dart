import 'package:flutter/cupertino.dart';
import 'package:mediabooster_video_player/utils/routes.dart';
import '../screens/home_screen/screen/home_screen.dart';
import '../screens/video_player_screen/screen/video_player_screen.dart';

Map<String,Widget Function(BuildContext)> routes = <String,Widget Function(BuildContext)>{
  AppRoutes.audioPlayerScreen: (context) => VideoPlayerScreen(),
  AppRoutes.homeScreen: (context)=> HomeScreen(),
};