import 'package:flutter/material.dart';
import 'package:outcaster_pr1_adv_f/screens/play_app_store_screen/page/play_app_store.dart';
import 'package:outcaster_pr1_adv_f/screens/stepper_screen/page/stepper_screen.dart';
import 'package:outcaster_pr1_adv_f/utils/routs.dart';
import '../screens/cupertino_store_screen/page/cupertino_store_screen.dart';
import '../screens/settings_ui_screen/page/settings_ui_screen.dart';
import '../screens/stepper_screen2/page/stepper_screen2.dart';

Map<String,Widget Function(BuildContext)> routes = <String,Widget Function(BuildContext)>{
  appRoutes.stepperScreen : (context) => const StepperScreen(),
  appRoutes.stepperScreen2 : (context) => const EditYourProfileStepperScreen(),
  appRoutes.settingUiScreen : (context) => const SettingUiScreen(),
  appRoutes.cupertinoStore : (context) => const CupertinoStoreScreen(),
  appRoutes.playAppStore : (context) => const PlayAppStore(),
};