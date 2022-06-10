import 'dart:developer';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:outcaster_pr1_adv_f/utils/colors.dart';
import 'package:outcaster_pr1_adv_f/utils/routs.dart';
import 'package:outcaster_pr1_adv_f/utils/strings.dart';
import '../../../modal_class/modal_class.dart';
import '../../../utils/network_images.dart';
import '../../../utils/text_style.dart';

class CupertinoStoreScreen extends StatefulWidget {
  const CupertinoStoreScreen({Key? key}) : super(key: key);

  @override
  State<CupertinoStoreScreen> createState() => _CupertinoStoreScreenState();
}

class _CupertinoStoreScreenState extends State<CupertinoStoreScreen> {
  int i=0;
  DateTime selected=DateTime.now() ;
  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      debugShowCheckedModeBanner: false,
      home: ScreenUtilInit(
        minTextAdapt: true,
        splitScreenMode: true,
        designSize: Size(360,690),
        builder: () => CupertinoPageScaffold(
            child: Column(
              children: [
                Expanded(
                  flex: 15,
                  child: IndexedStack(
                    index: i,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            flex: 2,
                            child: Column(
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                    color: greyColorShade50,
                                  ),
                                  alignment: Alignment(-0.9,1.6),
                                  height: 80,child: Row(
                                  children: [
                                    SizedBox(width: 10.w,),
                                    Text(cupertinoStore,style: blackTextBold20,),
                                    Spacer(),
                                    CupertinoButton(
                                        onPressed: () {
                                          Navigator.of(context).pushNamed(appRoutes.playAppStore);
                                        },
                                        child: Icon(CupertinoIcons.chevron_forward,color: blackColor,)),
                                  ],
                                ),),
                                SizedBox(height: 20.h,),
                              ],
                            ),
                          ),
                          Expanded(
                            flex: 11,
                            child: SingleChildScrollView(
                              physics: BouncingScrollPhysics(),
                              child: Column(
                                children: [
                                  Row(
                                    children:[
                                      SizedBox(width:20.w),
                                      Container(
                                        height: 65.h,
                                        width: 65.w,
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(10),
                                            image: DecorationImage(
                                              image:NetworkImage(bag),
                                              fit: BoxFit.cover,
                                            )
                                        ),
                                      ),
                                      SizedBox(width:20.w),
                                      Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text(bagTitle,style: blackText16,),
                                          SizedBox(height: 10.h,),
                                          Text(bagPrice,style: greyText12,),
                                        ],
                                      ),
                                      Spacer(),
                                      circleIconBlue,
                                      SizedBox(width: 20.w),
                                    ],
                                  ),
                                  Divider(endIndent: 30,indent: 100,color: blackColor,),
                                  Row(
                                    children:[
                                      SizedBox(width:20.w),
                                      Container(
                                        height: 65.h,
                                        width: 65.w,
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(10),
                                            image: DecorationImage(
                                              image:NetworkImage(sunGlasses),
                                              fit: BoxFit.cover,
                                            )
                                        ),
                                      ),
                                      SizedBox(width:20.w),
                                      Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text(sunglassesTitle,style: blackText16,),
                                          SizedBox(height: 10.h,),
                                          Text(sunglassesPrice,style: greyText12,),
                                        ],
                                      ),
                                      Spacer(),
                                      circleIconBlue,
                                      SizedBox(width: 20.w),
                                    ],
                                  ),
                                  Divider(endIndent: 30,indent: 100,color: blackColor,),
                                  Row(
                                    children:[
                                      const SizedBox(width:20),
                                      Container(
                                        height: 65.h,
                                        width: 65.w,
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(10),
                                            image: DecorationImage(
                                              image:NetworkImage(belt),
                                              fit: BoxFit.cover,
                                            )
                                        ),
                                      ),
                                      SizedBox(width:20.w),
                                      Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text(beltTitle,style: blackText16,),
                                          SizedBox(height: 10.h,),
                                          Text(beltPrice,style: greyText12,),
                                        ],
                                      ),
                                      Spacer(),
                                      circleIconBlue,
                                      SizedBox(width: 20.w),
                                    ],
                                  ),
                                  Divider(endIndent: 30,indent: 100,color: blackColor,),
                                  Row(
                                    children:[
                                      SizedBox(width:20.w),
                                      Container(
                                        height: 65.h,
                                        width: 65.w,
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(10),
                                            image: DecorationImage(
                                              image:NetworkImage(chain),
                                              fit: BoxFit.cover,
                                            )
                                        ),
                                      ),
                                      SizedBox(width:20.w),
                                      Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text(chainTitle,style: blackText16,),
                                          SizedBox(height: 10.h,),
                                          Text(chainPrice,style: greyText12,),
                                        ],
                                      ),
                                      Spacer(),
                                      circleIconBlue,
                                      SizedBox(width: 20.w),
                                    ],
                                  ),
                                  Divider(endIndent: 30,indent: 100,color: blackColor,),
                                  Row(
                                    children:[
                                      SizedBox(width:20.w),
                                      Container(
                                        height: 65.h,
                                        width: 65.w,
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(10),
                                            image: DecorationImage(
                                              image:NetworkImage(earrings),
                                              fit: BoxFit.cover,
                                            )
                                        ),
                                      ),
                                      SizedBox(width:20.w),
                                      Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text(earringsTitle,style: blackText16,),
                                          SizedBox(height: 10.h),
                                          Text(earringsPrice,style: greyText12,),
                                        ],
                                      ),
                                      Spacer(),
                                      circleIconBlue,
                                      SizedBox(width: 20.w),
                                    ],
                                  ),
                                  Divider(endIndent: 30,indent: 100,color: blackColor,),
                                  Row(
                                    children:[
                                      SizedBox(width:20.w),
                                      Container(
                                        height: 65.h,
                                        width: 65.w,
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(10),
                                            image: DecorationImage(
                                              image:NetworkImage(socks),
                                              fit: BoxFit.cover,
                                            )
                                        ),
                                      ),
                                      SizedBox(width:20.w),
                                      Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text(socksTitle,style: blackText16,),
                                          const SizedBox(height: 10,),
                                          Text(socksPrice,style: greyText12,),
                                        ],
                                      ),
                                      Spacer(),
                                      circleIconBlue,
                                      SizedBox(width: 20.w),
                                    ],
                                  ),
                                  Divider(endIndent: 30,indent: 100,color: blackColor,),
                                  Row(
                                    children:[
                                      SizedBox(width:20.w),
                                      Container(
                                        height: 65.h,
                                        width: 65.w,
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(10),
                                            image: DecorationImage(
                                              image:NetworkImage(keychain),
                                              fit: BoxFit.cover,
                                            )
                                        ),
                                      ),
                                      SizedBox(width:20.w),
                                      Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text(keychainTitle,style: blackText16,),
                                          SizedBox(height: 10.h,),
                                          Text(keychainPrice,style: greyText12,),
                                        ],
                                      ),
                                      Spacer(),
                                      circleIconBlue,
                                      SizedBox(width: 20.w),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            margin: EdgeInsets.all(15),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: greyColorShade400,
                            ),
                            alignment: Alignment.center,
                            height: 50,
                            child: Row(
                              children: [
                                SizedBox(width:10.w),
                                Icon(Icons.search,color: greyColor,),
                                SizedBox(width:15.w),
                                Text(cupertinoStoreSearch,style: blackText16,),
                                const Spacer(),
                                Icon(Icons.cancel_outlined,color: greyColor,),
                                SizedBox(width:15.w),
                              ],
                            ),),
                          SizedBox(height: 20.h,),
                          Row(
                            children:[
                              SizedBox(width:20.w),
                              Container(
                                height: 65.h,
                                width: 65.w,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    image: DecorationImage(
                                      image:NetworkImage(shirt1),
                                      fit: BoxFit.cover,
                                    )
                                ),
                              ),
                              SizedBox(width:20.w),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(shirt1Title,style: blackText16,),
                                  SizedBox(height: 10.h,),
                                  Text(shirt1Price,style: greyText12,),
                                ],
                              ),
                              Spacer(),
                              circleIconBlue,
                              SizedBox(width: 20.w),
                            ],
                          ),
                          Divider(endIndent: 30,indent: 100,color: blackColor,),
                          Row(
                            children:[
                              SizedBox(width:20.w),
                              Container(
                                height: 65.h,
                                width: 65.w,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    image: DecorationImage(
                                      image:NetworkImage(shirt2),
                                      fit: BoxFit.cover,
                                    )
                                ),
                              ),
                              SizedBox(width:20.w),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(shirt2Title,style: blackText16,),
                                  const SizedBox(height: 10,),
                                  Text(shirt2Price,style: greyText12,),
                                ],
                              ),
                              Spacer(),
                              circleIconBlue,
                              SizedBox(width: 20.w),
                            ],
                          ),
                          Divider(endIndent: 30,indent: 100,color: blackColor,),
                          Row(
                            children:[
                              SizedBox(width:20.w),
                              Container(
                                height: 65.h,
                                width: 65.w,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    image: DecorationImage(
                                      image:NetworkImage(shirt3),
                                      fit: BoxFit.cover,
                                    )
                                ),
                              ),
                              SizedBox(width:20.w),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(shirt3Title,style: blackText16,),
                                  SizedBox(height: 10.h,),
                                  Text(shirt3Price,style: greyText12,),
                                ],
                              ),
                              Spacer(),
                              circleIconBlue,
                              SizedBox(width: 20.w),
                            ],
                          ),
                          Divider(endIndent: 30,indent: 100,color: blackColor,),
                          Row(
                            children:[
                              SizedBox(width:20.w),
                              Container(
                                height: 65.h,
                                width: 65.w,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    image: DecorationImage(
                                      image:NetworkImage(shirt4),
                                      fit: BoxFit.cover,
                                    )
                                ),
                              ),
                              const SizedBox(width:20),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(shirt4Title,style: blackText16,),
                                  const SizedBox(height: 10,),
                                  Text(shirt4Price,style: greyText12,),
                                ],
                              ),
                              Spacer(),
                              circleIconBlue,
                              SizedBox(width: 20.w),
                            ],
                          ),
                          Divider(endIndent: 30,indent: 100,color: blackColor,),
                          Row(
                            children:[
                              SizedBox(width:20.w),
                              Container(
                                height: 65.h,
                                width: 65.w,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    image: DecorationImage(
                                      image:NetworkImage(shirt5),
                                      fit: BoxFit.cover,
                                    )
                                ),
                              ),
                              SizedBox(width:20.w),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(shirt5Title,style: blackText16,),
                                  SizedBox(height: 10.h,),
                                  Text(shirt5Price,style: greyText12,),
                                ],
                              ),
                              Spacer(),
                              circleIconBlue,
                              SizedBox(width: 10.w),
                            ],
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            flex: 1,
                            child: Container(
                              decoration: BoxDecoration(
                                color: greyColorShade50,
                              ),
                              alignment: Alignment(-0.9,0.7),
                              height: 80,child: Text(cupertinoShoppingCart,style: blackTextBold20,),),
                          ),
                          Expanded(
                            flex: 8,
                            child: SingleChildScrollView(
                              scrollDirection: Axis.vertical,
                              physics: BouncingScrollPhysics(),
                              child: Column(
                                children: [
                                  Container(
                                    margin: EdgeInsets.symmetric(horizontal: 20.w,vertical: 12.h),
                                    child: CupertinoTextField(
                                      decoration: BoxDecoration(
                                          border: Border(bottom: BorderSide(color: greyColorShade400))
                                      ),
                                      prefix: Icon(Icons.person,color:greyColor),
                                      placeholder: "Name",
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.symmetric(horizontal: 20.w,vertical: 12.h),
                                    child: CupertinoTextField(
                                      decoration: BoxDecoration(
                                          border: Border(bottom: BorderSide(color: greyColorShade400))
                                      ),
                                      prefix: Icon(Icons.email,color:greyColor),
                                      placeholder: "Email",
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.symmetric(horizontal: 20.w,vertical: 12.h),
                                    child: CupertinoTextField(
                                      decoration: BoxDecoration(
                                          border: Border(bottom: BorderSide(color: greyColorShade400))
                                      ),
                                      prefix: const Icon(Icons.place_sharp,color:greyColor),
                                      placeholder: "Location",
                                    ),
                                  ),
                                  Row(
                                    children: [
                                      SizedBox(width: 20.w,height: 15.h,),
                                      const Icon(Icons.watch_later_outlined,color: greyColor,),
                                      SizedBox(width: 8.w,),
                                      Text(deliveryTime,style: greyText15light,),
                                      const Spacer(),
                                      Text("$selected",style: greyText15,),
                                      SizedBox(width: 20.w),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 180.h,
                                    child: CupertinoDatePicker(
                                      initialDateTime: DateTime.now(),
                                      onDateTimeChanged: (val) {
                                        setState(() {
                                          selected=val;
                                          log("$selected");
                                        });
                                      },
                                    ),
                                  ),
                                  SingleChildScrollView(
                                    child: Column(
                                      children: [
                                        Row(
                                          children:[
                                            SizedBox(width:20.w),
                                            Container(
                                              height: 48.h,
                                              width: 48.w,
                                              decoration: BoxDecoration(
                                                  borderRadius: BorderRadius.circular(10),
                                                  image: DecorationImage(
                                                    image:NetworkImage(chain),
                                                    fit: BoxFit.cover,
                                                  )
                                              ),
                                            ),
                                            SizedBox(width:20.w),
                                            Column(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                Text(chainTitle,style: blackText16,),
                                                SizedBox(height: 10.h,),
                                                Text(chainPrice,style: greyText12,),
                                              ],
                                            ),
                                            const Spacer(),
                                            Text("$chainPrice.00",style: blackText16,),
                                            SizedBox(width: 20.w,),
                                          ],
                                        ),
                                        SizedBox(height: 8.h),
                                        Row(
                                          children:[
                                            SizedBox(width:20.w),
                                            Container(
                                              height: 48.h,
                                              width: 48.w,
                                              decoration: BoxDecoration(
                                                  borderRadius: BorderRadius.circular(10),
                                                  image: DecorationImage(
                                                    image:NetworkImage(sunGlasses),
                                                    fit: BoxFit.cover,
                                                  )
                                              ),
                                            ),
                                            SizedBox(width:20.w),
                                            Column(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                Text(sunglassesTitle,style: blackText16,),
                                                SizedBox(height: 10.h,),
                                                Text(sunglassesPrice,style: greyText12,),
                                              ],
                                            ),
                                            const Spacer(),
                                            Text("$sunglassesPrice.00",style: blackText16,),
                                            SizedBox(width:20.w),
                                          ],
                                        ),
                                        SizedBox(height: 8.h),
                                        Row(
                                          children:[
                                            SizedBox(width:20.w),
                                            Container(
                                              height: 48.h,
                                              width: 48.w,
                                              decoration: BoxDecoration(
                                                  borderRadius: BorderRadius.circular(10),
                                                  image: DecorationImage(
                                                    image:NetworkImage(keychain),
                                                    fit: BoxFit.cover,
                                                  )
                                              ),
                                            ),
                                            SizedBox(width:20.w),
                                            Column(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                Text(keychainTitle,style: blackText16,),
                                                SizedBox(height: 10.h,),
                                                Text(keychainPrice,style: greyText12,),
                                              ],
                                            ),
                                            Spacer(),
                                            Padding(
                                              padding: EdgeInsets.symmetric(horizontal: 10.w),
                                              child: Row(
                                                children: [
                                                  Text("$keychainPrice.00",style: blackText16,),
                                                ],
                                              ),
                                            ),
                                            SizedBox(width:10.w),
                                          ],
                                        ),
                                        Container(
                                          alignment :Alignment(0.9,0),
                                          child: Column(
                                            mainAxisAlignment: MainAxisAlignment.start,
                                            crossAxisAlignment: CrossAxisAlignment.end,
                                            children: [
                                              Text(shipping,style: greyText12,),
                                              SizedBox(height: 10.w,width: 20.w,),
                                              Text(tax,style: greyText12,),
                                              SizedBox(height: 10.w,width: 20.w,),
                                              Text(total,style:blackText16),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: CupertinoTabBar(
                    currentIndex: i,
                    onTap: (val){
                      setState(() {
                        i=val;
                        log("$i");
                      });
                    },
                    activeColor: blueColor,
                    items: const [
                      BottomNavigationBarItem(
                        label: productBottomNavigationBar,
                        icon: Icon(CupertinoIcons.home,size: 20,),
                      ),
                      BottomNavigationBarItem(
                        icon: Icon(CupertinoIcons.search,size: 20,),
                        label: searchBottomNavigationBar,
                      ),
                      BottomNavigationBarItem(
                        icon: Icon(CupertinoIcons.cart,size: 20,),
                        label: cartBottomNavigationBar,
                      ),
                    ],
                  ),
                ),
              ],
            )),
      ),
    );
  }
}
