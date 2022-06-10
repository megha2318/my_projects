import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:outcaster_pr1_adv_f/utils/colors.dart';
import '../../../modal_class/modal_class.dart';
import '../../../utils/network_images.dart';
import '../../../utils/strings.dart';
import '../../../utils/text_style.dart';
import '../widgets/play_app_store_common_widget.dart';

class AppStoreScreen extends StatefulWidget {
  const AppStoreScreen({Key? key}) : super(key: key);

  @override
  State<AppStoreScreen> createState() => _AppStoreScreenState();
}

class _AppStoreScreenState extends State<AppStoreScreen> {
  @override
  Widget build(BuildContext context) {
    return IndexedStack(
      index: index,
      children: <Widget>[
        ///
        ///TODO :- this is "Today" page
        ///
        Stack(
          children: [
            Column(
              children: [
                Expanded(
                  flex: 2,
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                            top: 95.h, right: 240.w, left: 20.w),
                        child: Text(
                            todayTxt1,
                            style: greyTextBold14
                        ),
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 20.w),
                            child: Text(
                                today,
                                style: blackTextBold40
                            ),
                          ),
                          const Spacer(),
                          Padding(
                            padding: EdgeInsets.only(right: 20.w),
                            child: CircleAvatar(
                              radius: 20,
                              backgroundImage: NetworkImage(
                                  circleImg),
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
                Expanded(
                  flex: 5,
                  child: SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    child: Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(right: 20.w, left: 20.w),
                          child: Container(
                            height: 350.h,
                            width: MediaQuery.of(context).size.width,
                            decoration: BoxDecoration(
                              color: blueGreyColor,
                              borderRadius: BorderRadius.circular(20),
                              image: DecorationImage(
                                  image: NetworkImage(todayImg1),
                                  opacity: 1.7,
                                  fit: BoxFit.cover),
                              boxShadow: const [
                                BoxShadow(
                                  color: greyColor,
                                  offset: Offset(5.0, 5.0),
                                  blurRadius: 8.0,
                                  spreadRadius: 2.0,
                                ),
                              ],
                            ),
                            child: Padding(
                              padding: EdgeInsets.symmetric(horizontal: 15.w,vertical: 15.h),
                              child: Column(
                                children: [
                                  Padding(
                                    padding:
                                    EdgeInsets.only(right: 220.w),
                                    child: Text(
                                        todayTxt2,
                                        style: whiteText12w400
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(
                                        top: 5.h, right: 30.w),
                                    child: Text(
                                        todayTxt3,
                                        style: whiteTextBold26
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 20.h),
                        Padding(
                          padding: EdgeInsets.only(right: 20.w, left: 20.w),
                          child: Container(
                            height: 350.h,
                            width: MediaQuery.of(context).size.width,
                            decoration: BoxDecoration(
                              color: blueGreyColor,
                              borderRadius: BorderRadius.circular(20),
                              image: DecorationImage(
                                  image: NetworkImage(
                                      todayImg2),
                                  opacity: 1.7,
                                  fit: BoxFit.cover),
                              boxShadow: const [
                                BoxShadow(
                                  color: greyColor,
                                  offset: Offset(5.0, 5.0),
                                  blurRadius: 8.0,
                                  spreadRadius: 2.0,
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(height: 20.h),
                        Padding(
                          padding: EdgeInsets.only(right: 20.w, left: 20.w),
                          child: Container(
                            height: 350.h,
                            width: MediaQuery.of(context).size.width,
                            decoration: BoxDecoration(
                              color: blueGreyColor,
                              borderRadius: BorderRadius.circular(20),
                              image: DecorationImage(
                                  image: NetworkImage(
                                      todayImg3),
                                  opacity: 1.7,
                                  fit: BoxFit.cover),
                              boxShadow: const [
                                BoxShadow(
                                  color: greyColor,
                                  offset: Offset(5.0, 5.0),
                                  blurRadius: 8.0,
                                  spreadRadius: 2.0,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                ///
                ///TODO :- this is "BottomNavigationBar"
                ///
                Expanded(
                  flex: 0,
                  child: Container(
                    height: 55.h,
                    width: MediaQuery.of(context).size.width,
                    color: whiteColor,
                    child: Padding(
                      padding: EdgeInsets.only(top: 8.h),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                index = 0;
                              });
                            },
                            child: Column(
                              children: [
                                Icon(
                                  CupertinoIcons.calendar,
                                  size: 30,
                                  color: (index != 0) ? greyColor : blueColor,
                                ),
                                SizedBox(height: 3.h),
                                Text(
                                  today,
                                  style: (index != 0) ? greyText9 : blueText9,
                                ),
                              ],
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                index = 1;
                              });
                            },
                            child: Column(
                              children: [
                                Icon(
                                  CupertinoIcons.rocket_fill,
                                  size: 30,
                                  color: (index != 1) ? greyColor : blueColor,
                                ),
                                SizedBox(height: 3.h),
                                Text(
                                    games,
                                    style: (index != 1) ? greyText9 : blueText9
                                ),
                              ],
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                index = 2;
                              });
                            },
                            child: Column(
                              children: [
                                Icon(
                                    CupertinoIcons.square_stack_3d_up_fill,
                                    size: 30,
                                    color: (index != 2) ? greyColor : blueColor
                                ),
                                SizedBox(height: 3.h),
                                Text(
                                    apps,
                                    style: (index != 2) ? greyText9 : blueText9
                                ),
                              ],
                            ),
                          ),
                          GestureDetector(
                            onTap: () {},
                            child: Column(
                              children: [
                                const Icon(CupertinoIcons.square_arrow_down_fill,
                                    size: 30, color: greyColor),
                                SizedBox(height: 3.h),
                                Text(
                                    updates,
                                    style: greyText9
                                ),
                              ],
                            ),
                          ),
                          GestureDetector(
                            onTap: () {},
                            child: Column(
                              children: [
                                const Icon(CupertinoIcons.search,
                                    size: 30, color: greyColor),
                                SizedBox(height: 3.h),
                                Text(
                                    search,
                                    style: greyText9
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
        ///
        ///TODO :- this is "Games" page
        ///
        Stack(
          children: [
            Column(
              children: [
                Expanded(
                  flex: 2,
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                            top: 85.h, right: 240.w, left: 20.w),
                      ),
                      SizedBox(height: 10.h),
                      Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 20.w),
                            child: Text(
                              games,
                              style: TextStyle(
                                fontSize: 40.sp,
                                fontWeight: FontWeight.bold,
                                decoration: TextDecoration.none,
                                color: blackColor,
                                letterSpacing: -1,
                              ),
                            ),
                          ),
                          const Spacer(),
                          Padding(
                            padding: EdgeInsets.only(right: 20.w),
                            child: CircleAvatar(
                              radius: 20,
                              backgroundImage: NetworkImage(
                                  circleImg),
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
                Expanded(
                  flex: 7,
                  child: SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    child: Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(right: 20.w, left: 20.w),
                          child: const Divider(
                            thickness: 1,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                              left: 20.w, top: 8.h),
                          child: Row(
                            children: [
                              Text(
                                  gamesTxt1,
                                  style: blueText12w600
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                              left: 20.w, top: 5.h),
                          child: Row(
                            children: [
                              Text(
                                gamesTxt2,
                                style: TextStyle(
                                    color: blackColor,
                                    fontSize: 19.sp,
                                    fontWeight: FontWeight.w400),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding:
                          EdgeInsets.only(left: 20.w),
                          child: Row(
                            children: [
                              Text(
                                  gamesTxt3,
                                  style: greyText19w400
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                              left: 20.w, right: 20.w, top: 10.h),
                          child: Container(
                            height: 240.h,
                            width: MediaQuery.of(context).size.width,
                            decoration: BoxDecoration(
                              color: blueGreyColor,
                              borderRadius: BorderRadius.circular(10),
                              image: DecorationImage(
                                  image: NetworkImage(
                                      gamesImg1),
                                  opacity: 1.7,
                                  fit: BoxFit.cover),
                              boxShadow: const [
                                BoxShadow(
                                  color: greyColor,
                                  offset: Offset(5.0, 5.0),
                                  blurRadius: 8.0,
                                  spreadRadius: 2.0,
                                ),
                              ],
                            ),
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(
                              right: 20, left: 20, top: 20),
                          child: Divider(
                            thickness: 1,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 20.w),
                          child: Row(
                            children: [
                              Text(
                                gamesTxt4,
                                style: blackTextBold20,
                              ),
                              Spacer(),
                              Text(seeAll,style: blueTextBold16,),
                              SizedBox(width: 20.w,)
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 10.h, left: 20.w),
                          child: Row(
                            children: [
                              Container(
                                height: 80.h,
                                width: 80.w,
                                decoration: BoxDecoration(
                                  color: blueGreyColor,
                                  borderRadius: BorderRadius.circular(10),
                                  image: DecorationImage(
                                      image: NetworkImage(
                                          gamesImg2),
                                      fit: BoxFit.cover
                                  ),
                                ),
                              ),
                              SizedBox(width: 20.w),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Column(
                                    children: [
                                      Text(gamesTxt5,
                                        style: const TextStyle(fontSize: 18),),
                                      Text(gamesTxt6,
                                          style: greyText12),
                                      SizedBox(height: 15.h),
                                      Container(
                                        alignment: Alignment.center,
                                        height: 30.h,
                                        width: 60.w,
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(30),
                                            color:greyColorShade200
                                        ),
                                        child: Text(get,
                                            style: blueTextBold16),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 10.h, left: 20.w),
                          child: Row(
                            children: [
                              Container(
                                height: 80.h,
                                width: 80.w,
                                decoration: BoxDecoration(
                                  color: blueGreyColor,
                                  borderRadius: BorderRadius.circular(10),
                                  image: DecorationImage(
                                    image: NetworkImage(
                                        gamesImg3),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              SizedBox(width: 20.w),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(gamesTxt51,
                                        style: const TextStyle(fontSize: 18),),
                                      Text(gamesTxt61,
                                          style: greyText12),
                                      SizedBox(height: 15.h),
                                      Padding(
                                        padding: const EdgeInsets.only(left: 20),
                                        child: Container(
                                          alignment: Alignment.center,
                                          height: 30.h,
                                          width: 60.w,
                                          decoration: BoxDecoration(
                                              borderRadius: BorderRadius.circular(30),
                                              color:greyColorShade200
                                          ),
                                          child: Text(get,
                                              style: blueTextBold16),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                ///
                ///TODO :- this is "BottomNavigationBar"
                ///
                Expanded(
                  flex: 0,
                  child: Container(
                    height: 55.h,
                    width: MediaQuery.of(context).size.width,
                    color: whiteColor,
                    child: Padding(
                      padding: EdgeInsets.only(top: 8.h),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                index = 0;
                              });
                            },
                            child: Column(
                              children: [
                                Icon(
                                  CupertinoIcons.calendar,
                                  size: 30,
                                  color: (index != 0) ? greyColor : blueColor,
                                ),
                                SizedBox(height: 3.h),
                                Text(
                                  today,
                                  style: (index != 0) ? greyText9 : blueText9,
                                ),
                              ],
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                index = 1;
                              });
                            },
                            child: Column(
                              children: [
                                Icon(
                                  CupertinoIcons.rocket_fill,
                                  size: 30,
                                  color: (index != 1) ? greyColor : blueColor,
                                ),
                                SizedBox(height: 3.h),
                                Text(
                                    games,
                                    style: (index != 1) ? greyText9 : blueText9
                                ),
                              ],
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                index = 2;
                              });
                            },
                            child: Column(
                              children: [
                                Icon(
                                    CupertinoIcons.square_stack_3d_up_fill,
                                    size: 30,
                                    color: (index != 2) ? greyColor : blueColor
                                ),
                                SizedBox(height: 3.h),
                                Text(
                                    apps,
                                    style: (index != 2) ? greyText9 : blueText9
                                ),
                              ],
                            ),
                          ),
                          GestureDetector(
                            onTap: () {},
                            child: Column(
                              children: [
                                const Icon(CupertinoIcons.square_arrow_down_fill,
                                    size: 30, color: greyColor),
                                SizedBox(height: 3.h),
                                Text(
                                    updates,
                                    style: greyText9
                                ),
                              ],
                            ),
                          ),
                          GestureDetector(
                            onTap: () {},
                            child: Column(
                              children: [
                                const Icon(CupertinoIcons.search,
                                    size: 30, color: greyColor),
                                SizedBox(height: 3.h),
                                Text(
                                    search,
                                    style: greyText9
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
        ///
        ///TODO :- this is "Apps" page
        ///
        Stack(
          children: [
            Column(
              children: [
                Expanded(
                  flex: 2,
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                            top: 85.h, right: 240.w, left: 20.w),
                      ),
                      SizedBox(height: 10.h),
                      Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 20.w),
                            child: Text(
                              apps,
                              style: TextStyle(
                                fontSize: 40.sp,
                                fontWeight: FontWeight.bold,
                                decoration: TextDecoration.none,
                                color: blackColor,
                                letterSpacing: -1,
                              ),
                            ),
                          ),
                          const Spacer(),
                          Padding(
                            padding: EdgeInsets.only(right: 20.w),
                            child: CircleAvatar(
                              radius: 20,
                              backgroundImage: NetworkImage(
                                  circleImg),
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
                Expanded(
                  flex: 7,
                  child: SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    child: Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(right: 20.w, left: 20.w),
                          child: const Divider(
                            thickness: 1,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                              left: 20.w, top: 8.h),
                          child: Row(
                            children: [
                              Text(
                                  appsTxt1,
                                  style: blueText12w600
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                              left: 20.w, top: 5.h),
                          child: Row(
                            children: [
                              Text(
                                appsTxt2,
                                style: TextStyle(
                                    color: blackColor,
                                    fontSize: 19.sp,
                                    fontWeight: FontWeight.w400),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding:
                          EdgeInsets.only(left: 20.w,),
                          child: Row(
                            children: [
                              Text(
                                  appsTxt3,
                                  style: greyText19w400
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                              left: 20.w, right: 20.w, top: 10.h),
                          child: Stack(
                            children: [
                              Container(
                                height: 240.h,
                                width: MediaQuery.of(context).size.width,
                                decoration: BoxDecoration(
                                  color: blueGreyColor,
                                  borderRadius: BorderRadius.circular(10),
                                  image: DecorationImage(
                                    image: NetworkImage(
                                        appsImg1),
                                    opacity: 1.7,
                                    fit: BoxFit.cover,
                                    alignment: const Alignment(-1,-2),
                                  ),
                                  boxShadow: const [
                                    BoxShadow(
                                      color: greyColor,
                                      offset: Offset(5.0, 5.0),
                                      blurRadius: 8.0,
                                      spreadRadius: 2.0,
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(
                              right: 20, left: 20, top: 20),
                          child: Divider(
                            thickness: 1,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 20.w),
                          child: Row(
                            children: [
                              Text(
                                appsTxt4,
                                style: blackTextBold20,
                              ),
                              Spacer(),
                              Text(seeAll,style: blueTextBold16),
                              SizedBox(width: 20.w),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 10.h, left: 20.w),
                          child: Row(
                            children: [
                              Container(
                                height: 60.h,
                                width: 60.w,
                                decoration: BoxDecoration(
                                  color: blueGreyColor,
                                  borderRadius: BorderRadius.circular(10),
                                  image: DecorationImage(
                                      image: NetworkImage(
                                          appsImg2),
                                      fit: BoxFit.cover
                                  ),
                                ),
                              ),
                              SizedBox(width: 20.w),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(appsTxt5,
                                        style: const TextStyle(fontSize: 18),),
                                      Text(appsTxt6,
                                          style: greyText12),
                                      SizedBox(height: 15.h),
                                    ],
                                  ),
                                  SizedBox(width: 42.w,),
                                  Container(
                                    alignment: Alignment.center,
                                    height: 30.h,
                                    width: 80.w,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(30),
                                        color:greyColorShade200
                                    ),
                                    child: Text(open,
                                        style: blueTextBold16),
                                  ),
                                  SizedBox(width: 20.w),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 10.h, left: 20.w),
                          child: Row(
                            children: [
                              Container(
                                height: 60.h,
                                width: 60.w,
                                decoration: BoxDecoration(
                                  color: blueGreyColor,
                                  borderRadius: BorderRadius.circular(10),
                                  image: DecorationImage(
                                      image: NetworkImage(
                                          appsImg3),
                                      fit: BoxFit.cover
                                  ),
                                ),
                              ),
                              SizedBox(width: 20.w),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(appsTxt51,
                                        style: const TextStyle(fontSize: 18),),
                                      Text(appsTxt61,
                                          style: greyText12),
                                      SizedBox(height: 15.h),
                                    ],
                                  ),
                                  SizedBox(width: 35.w,),
                                  Container(
                                    alignment: Alignment.center,
                                    height: 30.h,
                                    width: 80.w,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(30),
                                        color:greyColorShade200
                                    ),
                                    child: Text(open,
                                        style: blueTextBold16),
                                  ),
                                  SizedBox(width: 20.w),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                ///
                ///TODO :- this is "BottomNavigationBar"
                ///
                Expanded(
                  flex: 0,
                  child: Container(
                    height: 55.h,
                    width: MediaQuery.of(context).size.width,
                    color: whiteColor,
                    child: Padding(
                      padding: EdgeInsets.only(top: 8.h),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                index = 0;
                              });
                            },
                            child: Column(
                              children: [
                                Icon(
                                  CupertinoIcons.calendar,
                                  size: 30,
                                  color: (index != 0) ? greyColor : blueColor,
                                ),
                                SizedBox(height: 3.h),
                                Text(
                                    today,
                                    style: (index != 0) ? greyText9 : blueText9,
                                ),
                              ],
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                index = 1;
                              });
                            },
                            child: Column(
                              children: [
                                Icon(
                                  CupertinoIcons.rocket_fill,
                                  size: 30,
                                  color: (index != 1) ? greyColor : blueColor,
                                ),
                                SizedBox(height: 3.h),
                                Text(
                                    games,
                                    style: (index != 1) ? greyText9 : blueText9
                                ),
                              ],
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                index = 2;
                              });
                            },
                            child: Column(
                              children: [
                                Icon(
                                    CupertinoIcons.square_stack_3d_up_fill,
                                    size: 30,
                                    color: (index != 2) ? greyColor : blueColor
                                ),
                                SizedBox(height: 3.h),
                                Text(
                                    apps,
                                    style: (index != 2) ? greyText9 : blueText9
                                ),
                              ],
                            ),
                          ),
                          GestureDetector(
                            onTap: () {},
                            child: Column(
                              children: [
                                const Icon(CupertinoIcons.square_arrow_down_fill,
                                    size: 30, color: greyColor),
                                SizedBox(height: 3.h),
                                Text(
                                    updates,
                                    style: greyText9
                                ),
                              ],
                            ),
                          ),
                          GestureDetector(
                            onTap: () {},
                            child: Column(
                              children: [
                                const Icon(CupertinoIcons.search,
                                    size: 30, color: greyColor),
                                SizedBox(height: 3.h),
                                Text(
                                    search,
                                    style: greyText9
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      ],
    );
  }
}
