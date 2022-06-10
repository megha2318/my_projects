import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:outcaster_pr1_adv_f/screens/settings_ui_screen/page/settings_ui_screen.dart';
import 'package:outcaster_pr1_adv_f/utils/routs.dart';
import '../../../utils/colors.dart';
import '../../../utils/strings.dart';
import '../../../utils/text_style.dart';

///
/// TODO :- this is "Setting UI" IOS style Screen
///

class SettingUiScreen2 extends StatefulWidget {
  const SettingUiScreen2({Key? key}) : super(key: key);

  @override
  State<SettingUiScreen2> createState() => _SettingUiScreen2State();
}

class _SettingUiScreen2State extends State<SettingUiScreen2> {
  bool platformChange1 = false;
  bool lockSwitch =true;
  bool passwordSwitch =true;
  bool fingerprintSwitch =false;
  @override
  Widget build(BuildContext context) {
    return (platformChange1 == false) ? ScreenUtilInit(
      designSize: const Size(360,690),
      splitScreenMode: true,
      minTextAdapt: true,
      builder: () => Scaffold(
        appBar: AppBar(
          leading: Container(),
          title:Text(settingUi,style: whiteTextBold20,),
          centerTitle: true,
          backgroundColor: deepOrangeColor,
          actions: [
            CupertinoSwitch(value: platformChange1, onChanged: (v){
              setState(() {
                platformChange1 = v;
              });
            }),
            IconButton(icon: Icon(Icons.arrow_forward_ios_outlined),onPressed: (){
              Navigator.of(context).pushNamed(appRoutes.cupertinoStore);
            },)
          ],
        ),
        body:SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children:[
              SizedBox(height: 25.h),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(width:15.w),
                  Text(
                    settingsCommon,
                    style: greyTextBold,
                  ),
                ],
              ),
              SizedBox(
                height: 10.h,
              ),
              Container(
                color: whiteColor,
                child: Row(
                  children: [
                    SizedBox(width: 15.w,),
                    const Icon(Icons.language,color: greyColor,),
                    SizedBox(width: 15.w,),
                    Text(
                      settingsLanguage,
                      style: blackText16,
                    ),
                    Spacer(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          settingEnglish,
                          style: greyText15,
                        ),
                        IconButton(onPressed: (){}, icon: const Icon(Icons.arrow_forward_ios,color: greyColor,),)
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                color: whiteColor,
                child: Row(
                  children: [
                    SizedBox(width: 15.w,),
                    const Icon(Icons.cloud_outlined,color: greyColor,),
                    SizedBox(width: 15.w,),
                    Text(
                      settingEnvironment,
                      style: blackText16,
                    ),
                    Spacer(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          settingProduction,
                          style: greyText15,
                        ),
                        IconButton(onPressed: (){}, icon: const Icon(Icons.arrow_forward_ios,color: greyColor,),)
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height:25.h),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(width:15.w),
                  Text(
                    settingAccount,
                    style: greyTextBold,
                  ),
                ],
              ),
              SizedBox(
                height: 10.h,
              ),
              Container(
                alignment: Alignment.center,
                height: 40.h,
                color: whiteColor,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(width:15.w),
                    const Icon(Icons.phone,color: greyColor,),
                    SizedBox(width:15.w),
                    Text(
                      settingPhone,
                      style: blackText16,
                    ),
                    Spacer(),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10.w),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: const [
                          Icon(Icons.arrow_forward_ios,color: greyColor,),
                        ],
                      ),
                    ),
                  ],

                ),
              ),
              Container(
                alignment: Alignment.center,
                color: whiteColor,
                height: 40.h,
                child: Row(
                  children: [
                    SizedBox(width:15.w),
                    const Icon(Icons.email,color: greyColor,),
                    SizedBox(width:15.w),
                    Text(
                      settingEmail,
                      style: blackText16,
                    ),
                    Spacer(),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10.w),
                      child: Row(
                        children: const [
                          Icon(Icons.arrow_forward_ios,color: greyColor,),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                alignment: Alignment.center,
                height: 40.h,
                color: whiteColor,
                child: Row(
                  children: [
                    SizedBox(width:15.w),
                    const Icon(Icons.login_outlined,color: greyColor,),
                    SizedBox(width: 15.w,),
                    Text(
                      settingSignOut,
                      style: blackText16,
                    ),
                    Spacer(),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10.w),
                      child: Row(
                        children: const [
                          Icon(Icons.arrow_forward_ios,color: greyColor,),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 25.h),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(width:15.w),
                  Text(
                    settingSecurity,
                    style: greyTextBold,
                  ),
                ],
              ),
              SizedBox(
                height: 10.h,
              ),
              Container(
                color: whiteColor,
                alignment: Alignment.center,
                height: 40.h,
                child: Row(
                  children: [
                    SizedBox(width:15.w),
                    const Icon(Icons.logout_outlined,color: greyColor,),
                    SizedBox(width:15.w),
                    Text(
                      settingLock,
                      style: blackText16,
                    ),
                    const Spacer(),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10.w),
                      child: Row(
                        children: [
                          CupertinoSwitch(
                            activeColor: deepOrangeColor,
                            thumbColor: whiteColor,
                            trackColor: greyColor,
                            onChanged: (val) {
                              setState(() {
                                lockSwitch = val;
                              });
                            },
                            value: lockSwitch,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                color: whiteColor,
                alignment: Alignment.center,
                height: 40.h,
                child: Row(
                  children: [
                    SizedBox(width: 15.w,),
                    const Icon(Icons.fingerprint,color: greyColor,),
                    SizedBox(width: 15.w,),
                    Text(
                      settingFingerPrint,
                      style: blackText16,),
                    const Spacer(),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10.w),
                      child: Row(
                        children: [
                          CupertinoSwitch(
                            activeColor: deepOrangeColor,
                            thumbColor: whiteColor,
                            trackColor: greyColor,
                            onChanged: (val) {
                              setState(() {
                                fingerprintSwitch = val;
                              });
                            },
                            value: fingerprintSwitch,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                color: whiteColor,
                alignment: Alignment.center,
                height: 40.h,
                child: Row(
                  children: [
                    SizedBox(width: 15.w,),
                    const Icon(Icons.lock,color: greyColor,),
                    SizedBox(width: 15.w,),
                    Text(
                      settingPassword,
                      style: blackText16,
                    ),
                    Spacer(),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10.w),
                      child: Row(
                        children: [
                          CupertinoSwitch(
                            activeColor: deepOrangeColor,
                            thumbColor: whiteColor,
                            trackColor: greyColor,
                            onChanged: (val) {
                              setState(() {
                                passwordSwitch = val;
                              });
                            },
                            value: passwordSwitch,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 25.h),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(width: 15.w,),
                  Text(
                    settingMisc,
                    style: greyTextBold,
                  ),
                ],
              ),
              SizedBox(
                height: 10.h,
              ),
              Container(
                color: whiteColor,
                alignment: Alignment.center,
                height: 40.h,
                child: Row(
                  children: [
                    SizedBox(width: 15.w,),
                    const Icon(Icons.event_note_outlined,color: greyColor,),
                    SizedBox(width: 15.w,),
                    Text(
                      settingTerms,
                      style: blackText16,
                    ),
                    Spacer(),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10.w),
                      child: Row(
                        children: [
                          const Icon(Icons.arrow_forward_ios,color: greyColor,),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                color: whiteColor,
                alignment: Alignment.center,
                height: 40.h,
                child: Row(
                  children: [
                    SizedBox(width: 15.w,),
                    const Icon(Icons.library_add_check,color: greyColor,),
                    SizedBox(width: 15.w,),
                    Text(
                      settingOpenSourceLicences,
                      style: blackText16,
                    ),
                    const Spacer(),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10.w),
                      child: Row(
                        children: [
                          const Icon(Icons.arrow_forward_ios,color:greyColor,),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    ):const SettingUiScreen();
  }
}