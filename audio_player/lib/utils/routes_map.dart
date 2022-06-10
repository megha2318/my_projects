import 'package:flutter/cupertino.dart';
import 'package:media_booster_pr2_adv_f/utils/routes.dart';
import '../screens/audio_player_screen/screen/audio_player_screen.dart';
import '../screens/audio_screen/screen/audio_screen.dart';
import '../screens/file_audio_screen/screen/file_audio_screen.dart';
import '../screens/home_screen/screen/home_screen.dart';

Map<String,Widget Function(BuildContext)> routes = <String,Widget Function(BuildContext)>{
  AppRoutes.audioPlayerScreen: (context)=> AudioPlayerScreen(),
  AppRoutes.homeScreen: (context)=> HomeScreen(),
  AppRoutes.audioScreen: (context)=> AudioScreen(),
  AppRoutes.fileAudioScreen: (context)=> FileAudioScreen(),
};