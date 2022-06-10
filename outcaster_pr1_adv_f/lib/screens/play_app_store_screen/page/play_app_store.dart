import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:outcaster_pr1_adv_f/screens/play_app_store_screen/page/app_store_screen.dart';
import 'package:outcaster_pr1_adv_f/screens/play_app_store_screen/page/play_store_screen.dart';
import 'package:outcaster_pr1_adv_f/utils/colors.dart';
import '../../../utils/routs.dart';
import '../../../utils/strings.dart';
import '../../../utils/text_style.dart';

class PlayAppStore extends StatefulWidget {
  const PlayAppStore({Key? key}) : super(key: key);

  @override
  State<PlayAppStore> createState() => _PlayAppStoreState();
}

class _PlayAppStoreState extends State<PlayAppStore> {
  bool switchState = true;

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(360, 690),
      splitScreenMode: true,
      minTextAdapt: true,
      builder: () => (switchState == false) ? CupertinoApp(
        debugShowCheckedModeBanner: false,
        home: CupertinoPageScaffold(
          navigationBar: CupertinoNavigationBar(
            middle: Text(appStore,style: blackText20,),
            leading: CupertinoSwitch(
              value: switchState,
              activeColor: blueGreyColor,
              onChanged: (value) {
                switchState = value;
                setState(() {});
              },
            ),
            trailing: CupertinoButton(
              onPressed: () {
                Navigator.of(context).pushNamed(appRoutes.stepperScreen2);
              },
            child: const Icon(Icons.arrow_forward_ios_outlined,color: blackColor,),
            ),
          ),
          child: const AppStoreScreen()
        ),
      ) : MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            centerTitle: true,
            elevation: 0,
            title: Text(playStore,style: blackText20,),
            leading: Switch(
              value: switchState,
              activeColor: blueGreyColor,
              onChanged: (value) {
                switchState = value;
                setState(() {});
              },
            ),
            backgroundColor: greyColorShade200,
            actions: [
              IconButton(
                onPressed: () {
                  Navigator.of(context).pushNamed(appRoutes.stepperScreen2);
                },
                icon: const Icon(Icons.arrow_forward_ios_outlined,color: blackColor,),
              )
            ],
          ),
          body: const PlayStoreScreen(),
        ),
      ),
    );
  }
}
