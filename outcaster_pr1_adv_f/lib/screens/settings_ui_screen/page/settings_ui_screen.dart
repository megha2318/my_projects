import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:outcaster_pr1_adv_f/screens/settings_ui_screen/page/settings_ui2_screen.dart';
import '../../../utils/colors.dart';
import '../../../utils/routs.dart';
import '../../../utils/strings.dart';
import '../../../utils/text_style.dart';

///
/// TODO :- this is "Settings UI" Screen
///

class SettingUiScreen extends StatefulWidget {
  const SettingUiScreen({Key? key}) : super(key: key);

  @override
  State<SettingUiScreen> createState() => _SettingUiScreenState();
}

class _SettingUiScreenState extends State<SettingUiScreen> {
  bool lockSwitch = true;
  bool fingerprintSwitch = false;
  bool passwordSwitch = true;
  bool platformChange =true;

  @override
  Widget build(BuildContext context) {
    return (platformChange==true)? ScreenUtilInit(
      minTextAdapt: true,
      splitScreenMode: true,
      designSize: Size(360,690),
      builder: () => Scaffold(
        appBar: AppBar(
          title: Text(settingUi, style: whiteTextBold20),
          backgroundColor: deepOrangeColor,
          actions: [
            Switch(
              activeColor: whiteColor,
              inactiveTrackColor: greyColor,
              inactiveThumbColor: blackColor,
              onChanged: (val) {
                setState(() {
                  platformChange = val;
                });
              },
              value: platformChange,
            ),
            IconButton(icon: Icon(Icons.arrow_forward_ios_outlined),onPressed: (){
              Navigator.of(context).pushNamed(appRoutes.cupertinoStore);
            },)
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children:[
              const SizedBox(height:15),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(width:15),
                  Text(
                    settingsCommon,
                    style: deepOrangeTextBold,
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              ListTile(
                title: Text(
                  settingsLanguage,
                  style: blackText16,
                ),
                subtitle: Text(
                  settingEnglish,
                  style: greyText15,
                ),
                leading: const Icon(Icons.language),
              ),
              ListTile(
                title: Text(
                  settingEnvironment,
                  style: blackText16,
                ),
                subtitle: Text(
                  settingProduction,
                  style: greyText15,
                ),
                leading: const Icon(Icons.cloud_outlined),
              ),
              const SizedBox(height:10),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(width:15),
                  Text(
                    settingAccount,
                    style: deepOrangeTextBold,
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              ListTile(
                title: Text(
                  settingPhone,
                  style: blackText16,
                ),
                leading: const Icon(Icons.phone),
              ),
              ListTile(
                title: Text(
                  settingEmail,
                  style: blackText16,
                ),
                leading: const Icon(Icons.email),
              ),
              ListTile(
                title: Text(
                  settingSignOut,
                  style: blackText16,
                ),
                leading: const Icon(Icons.login_outlined),
              ),
              const SizedBox(height:10),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(width:15),
                  Text(
                    settingSecurity,
                    style: deepOrangeTextBold,
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              ListTile(
                title: Text(
                  settingLock,
                  style: blackText16,
                ),
                leading: const Icon(Icons.logout_outlined),
                trailing: Switch(
                  inactiveThumbColor: whiteColor,
                  activeTrackColor: deepOrangeColor,
                  inactiveTrackColor: greyColor,
                  activeColor: deepOrangeColor,
                  onChanged: (val) {
                    setState(() {
                      lockSwitch = val;
                    });
                  },
                  value: lockSwitch,
                ),
              ),
              ListTile(
                title: Text(
                  settingFingerPrint,
                  style: blackText16,
                ),
                leading: const Icon(Icons.fingerprint),
                trailing: Switch(
                  inactiveThumbColor: whiteColor,
                  activeTrackColor: deepOrangeColor,
                  inactiveTrackColor: greyColor,
                  activeColor: deepOrangeColor,
                  onChanged: (val) {
                    setState(() {
                      fingerprintSwitch = val;
                    });
                  },
                  value: fingerprintSwitch,
                ),
              ),
              ListTile(
                title: Text(
                  settingPassword,
                  style: blackText16,
                ),
                leading: const Icon(Icons.lock),
                trailing: Switch(
                  inactiveThumbColor: whiteColor,
                  activeTrackColor: deepOrangeColor,
                  inactiveTrackColor: greyColor,
                  activeColor: deepOrangeColor,
                  onChanged: (val) {
                    setState(() {
                      passwordSwitch = val;
                    });
                  },
                  value: passwordSwitch,
                ),
              ),
              const SizedBox(height:10),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(width: 15,),
                  Text(
                    settingMisc,
                    style: deepOrangeTextBold,
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              ListTile(
                title: Text(
                  settingTerms,
                  style: blackText16,
                ),
                leading: const Icon(Icons.event_note_outlined),
              ),
              ListTile(
                title: Text(
                  settingOpenSourceLicences,
                  style: blackText16,
                ),
                leading: const Icon(Icons.library_add_check),
              ),
            ],
          ),
        ),
      ),
    ):const SettingUiScreen2();
  }
}


