import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:outcaster_pr1_adv_f/utils/colors.dart';
import '../../../modal_class/modal_class.dart';
import '../../../utils/network_images.dart';
import '../../../utils/strings.dart';
import '../../../utils/text_style.dart';
import '../widgets/play_app_store_common_widget.dart';


class PlayStoreScreen extends StatefulWidget {
  const PlayStoreScreen({Key? key}) : super(key: key);

  @override
  State<PlayStoreScreen> createState() => _PlayStoreScreenState();
}

class _PlayStoreScreenState extends State<PlayStoreScreen> {
  int playStoreIndex = 0;
  @override
  Widget build(BuildContext context) {
    return IndexedStack(
      index: playStoreIndex,
      children: [
        ///
        /// TODO :- this is "Apps" Screen
        ///
        Center(
          child: Column(
            children: [
              Expanded(
                flex: 22,
                child: Padding(
                  padding: EdgeInsets.only(top: 10.h),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 45.h,
                        width: 340.w,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            border: Border.all(color: greyColorShade400,width: 2)
                        ),
                        child: SearchBar(),
                      ),
                      SizedBox(height: 12.h),
                      Stack(
                        alignment: Alignment(-1,1.7),
                        children: [
                          const Divider(color: greyColor,thickness: 0.5),
                          Padding(
                            padding: EdgeInsets.only(right: 15.w),
                            child: SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(left: 15.w),
                                    child: Column(
                                      children: [
                                        Text(forYou,style: greenText16,),
                                        SizedBox(height: 10.h,),
                                        Container(
                                          height: 2.h,
                                          width: 45.w,
                                          color: greenColorShade800,
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: 20.w),
                                    child: Column(
                                      children: [
                                        Text(topCharts,style: greyText16,),
                                        SizedBox(
                                          height: 12.h,
                                          width: 45.w,
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: 15.w),
                                    child: Column(
                                      children: [
                                        Text(categories,style: greyText16,),
                                        SizedBox(
                                          height: 12.h,
                                          width: 45.w,
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: 15.w),
                                    child: Column(
                                      children: [
                                        Text(editorsChoice,style: greyText16,),
                                        SizedBox(
                                          height: 12.h,
                                          width: 45.w,
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      Expanded(
                        flex: 9,
                        child: SingleChildScrollView(
                          scrollDirection: Axis.vertical,
                          child: Column(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(top: 15.h,bottom: 10.h),
                                child: PlayStoreRow(txt: playStoreTxt1),
                              ),
                              SingleChildScrollView(
                                scrollDirection: Axis.horizontal,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SizedBox(width: 15.w),
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        PlayAppImage(img: nestImg),
                                        Padding(
                                          padding: EdgeInsets.symmetric(horizontal: 5.w),
                                          child: Text(nest,style: blackText9),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.symmetric(horizontal: 5.w),
                                          child: Row(
                                            children: [
                                              Text(rate42,style: blackText9),
                                              starRate,
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(width: 12.w),
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        PlayAppImage(img: ntcImg),
                                        Padding(
                                          padding: EdgeInsets.symmetric(horizontal: 5.w),
                                          child: Text(ntc,style: blackText9),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.symmetric(horizontal: 5.w),
                                          child: Row(
                                            children: [
                                              Text(rate46,style: blackText9),
                                              starRate,
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(width: 12.w),
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        PlayAppImage(img: testyImg),
                                        Padding(
                                          padding: EdgeInsets.symmetric(horizontal: 5.w),
                                          child: Text(tasty,style: blackText9),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.symmetric(horizontal: 5.w),
                                          child: Row(
                                            children: [
                                              Text(rate47,style: blackText9),
                                              starRate,
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(width: 12.w),
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        PlayAppImage(img: mxPlayerImg),
                                        Padding(
                                          padding: EdgeInsets.symmetric(horizontal: 5.w),
                                          child: Text(mxPlayer,style: blackText9),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.symmetric(horizontal: 5.w),
                                          child: Row(
                                            children: [
                                              Text(rate43,style: blackText9),
                                              starRate,
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(width: 15.w),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(top: 15.h,bottom: 10.h),
                                child: PlayStoreRow(txt: playStoreTxt2),
                              ),
                              SingleChildScrollView(
                                scrollDirection: Axis.horizontal,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SizedBox(width: 15.w),
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        PlayAppImage(img: weatherImg),
                                        Padding(
                                          padding: EdgeInsets.symmetric(horizontal: 5.w),
                                          child: Text(weather,style: blackText9),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.symmetric(horizontal: 5.w),
                                          child: Row(
                                            children: [
                                              Text(rate46,style: blackText9),
                                              starRate,
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(width: 12.w),
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        PlayAppImage(img: airBnbImg),
                                        Padding(
                                          padding: EdgeInsets.symmetric(horizontal: 5.w),
                                          child: Text(airBnb,style: blackText9),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.symmetric(horizontal: 5.w),
                                          child: Row(
                                            children: [
                                              Text(rate45,style: blackText9),
                                              starRate,
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(width: 12.w),
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        PlayAppImage(img: googleHomeImg),
                                        Padding(
                                          padding: EdgeInsets.symmetric(horizontal: 5.w),
                                          child: Text(googleHome,style: blackText9),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.symmetric(horizontal: 5.w),
                                          child: Row(
                                            children: [
                                              Text(rate41,style: blackText9),
                                              starRate,
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(width: 12.w),
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        PlayAppImage(img: adobeScannerImg),
                                        Padding(
                                          padding: EdgeInsets.symmetric(horizontal: 5.w),
                                          child: Text(adobeScanner,style: blackText9),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.symmetric(horizontal: 5.w),
                                          child: Row(
                                            children: [
                                              Text(rate41,style: blackText9),
                                              starRate,
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(width: 15.w),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(top: 15.h,bottom: 10.h),
                                child: Row(
                                  children: [
                                    Expanded(
                                      flex: 2,
                                      child: Padding(
                                        padding: EdgeInsets.only(left: 15.w),
                                        child: Container(
                                          alignment: Alignment.center,
                                          height: 20.h,
                                          width: 30.w,
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(5),
                                            border: Border.all(color: greenColorShade800),
                                          ),
                                          child: Text("Ads",style: greenText12,),
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                        flex: 9,
                                        child: PlayStoreRow(txt: playStoreTxt3)),
                                  ],
                                ),
                              ),
                              SingleChildScrollView(
                                scrollDirection: Axis.horizontal,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SizedBox(width: 15.w),
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        PlayAppImage(img: snapChatImg),
                                        Padding(
                                          padding: EdgeInsets.symmetric(horizontal: 5.w),
                                          child: Text(snapChat,style: blackText9),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.symmetric(horizontal: 5.w),
                                          child: Row(
                                            children: [
                                              Text(rate42,style: blackText9),
                                              starRate,
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(width: 12.w),
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        PlayAppImage(img: netflixImg),
                                        Padding(
                                          padding: EdgeInsets.symmetric(horizontal: 5.w),
                                          child: Text(netflix,style: blackText9),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.symmetric(horizontal: 5.w),
                                          child: Row(
                                            children: [
                                              Text(rate42,style: blackText9),
                                              starRate,
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(width: 12.w),
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        PlayAppImage(img: pinterestImg),
                                        Padding(
                                          padding: EdgeInsets.symmetric(horizontal: 5.w),
                                          child: Text(pinterest,style: blackText9),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.symmetric(horizontal: 5.w),
                                          child: Row(
                                            children: [
                                              Text(rate44,style: blackText9),
                                              starRate,
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(width: 12.w),
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        PlayAppImage(img: starMakerImg),
                                        Padding(
                                          padding: EdgeInsets.symmetric(horizontal: 5.w),
                                          child: Text(starMaker,style: blackText9),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.symmetric(horizontal: 5.w),
                                          child: Row(
                                            children: [
                                              Text(rate43,style: blackText9),
                                              starRate,
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(width: 15.w),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 2,
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 5.h),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      GestureDetector(
                        onTap: (){
                          setState(() {
                            playStoreIndex = 1;
                          });
                        },
                        child: Column(
                          children: [
                            Icon(Icons.videogame_asset_outlined,color: (playStoreIndex != 1) ? blackColor : greenColorShade800),
                            SizedBox(height: 2.h),
                            Text(games,style: (playStoreIndex != 1) ? blackText12 : greenText12),
                          ],
                        ),
                      ),
                      GestureDetector(
                        onTap: (){
                          setState(() {
                            playStoreIndex = 0;
                          });
                        },
                        child: Column(
                          children: [
                            Icon(Icons.apps,color: (playStoreIndex == 0) ? greenColorShade800 : blackColor),
                            SizedBox(height: 2.h),
                            Text(apps,style: (playStoreIndex == 0) ? greenText12 : blackText12,),
                          ],
                        ),
                      ),
                      Column(
                        children: [
                          Icon(Icons.local_movies,color: blackColor,),
                          SizedBox(height: 2.h),
                          Text(moviesTv,style: blackText12),
                        ],
                      ),
                      Column(
                        children: [
                          Icon(Icons.book,color: blackColor,),
                          SizedBox(height: 2.h),
                          Text(books,style: blackText12),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        ///
        /// TODO :- this is "Games" Screen
        ///
        Column(
          children: [
            Expanded(
              flex: 22,
              child: Padding(
                padding: EdgeInsets.only(top: 10.h),
                child: Column(
                  children: [
                    Container(
                      height: 45.h,
                      width: 340.w,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          border: Border.all(color: greyColorShade400,width: 2)
                      ),
                      child: SearchBar(),
                    ),
                    SizedBox(height: 12.h),
                    Stack(
                      alignment: Alignment(-1,1.7),
                      children: [
                        const Divider(color: greyColor,thickness: 0.5),
                        Padding(
                          padding: EdgeInsets.only(right: 15.w),
                          child: SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(left: 15.w),
                                  child: Column(
                                    children: [
                                      Text(forYou,style: greyText16,),
                                      SizedBox(height: 10.h,),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 20.w),
                                  child: Column(
                                    children: [
                                      Text(topCharts,style: greenText16,),
                                      SizedBox(
                                        height: 12.h,
                                        width: 45.w,
                                      ),
                                      Container(
                                        height: 2.h,
                                        width: 70.w,
                                        color: greenColorShade800,
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 15.w),
                                  child: Column(
                                    children: [
                                      Text(categories,style: greyText16,),
                                      SizedBox(
                                        height: 12.h,
                                        width: 45.w,
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 15.w),
                                  child: Column(
                                    children: [
                                      Text(editorsChoice,style: greyText16,),
                                      SizedBox(
                                        height: 12.h,
                                        width: 45.w,
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    Expanded(
                      flex: 9,
                      child: SingleChildScrollView(
                        child: Column(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(top: 10.h),
                              child: Row(
                                children: [
                                  SizedBox(width: 15.w),
                                  Text(playGamesText1,style: greyText15,),
                                  Spacer(),
                                  Switch(value: false, onChanged: (bool value) {},),
                                  SizedBox(width: 5.w),
                                ],
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 10.w,vertical: 10.h),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: [
                                  Container(
                                    alignment: Alignment.center,
                                    height: 30.h,
                                    width: 90.w,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(50),
                                      color: greenColorShade100,
                                    ),
                                    child: Text(topFree,style: greenText14,),
                                  ),
                                  Container(
                                    alignment: Alignment.center,
                                    height: 30.h,
                                    width: 120.w,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(50),
                                        border: Border.all(color: greenColorShade800)
                                    ),
                                    child: Text(topGrossing,style: blackText14,),
                                  ),
                                  Container(
                                    alignment: Alignment.center,
                                    height: 30.h,
                                    width: 100.w,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(50),
                                        border: Border.all(color: greenColorShade800)
                                    ),
                                    child: Text(trending,style: blackText14,),
                                  ),
                                ],
                              ),
                            ),
                            GamesScreen(gameNum: '1', gameImg: playGamesImg1, rate: rate39, gameTxtFirst: bottleFlip3d, gameTxtSecond: tastyPill,),
                            GamesScreen(gameNum: '2', gameImg: playGamesImg2, rate: rate42, gameTxtFirst: stackBall, gameTxtSecond: aiGames,),
                            GamesScreen(gameNum: '3', gameImg: playGamesImg3, rate: rate39, gameTxtFirst: trafficRun, gameTxtSecond: tokyo,),
                            GamesScreen(gameNum: '4', gameImg: playGamesImg4, rate: rate39, gameTxtFirst: ropAround, gameTxtSecond: sayGames,),
                            GamesScreen(gameNum: '5', gameImg: playGamesImg5, rate: rate41, gameTxtFirst: runRace, gameTxtSecond: goodJobGames,),
                            GamesScreen(gameNum: '6', gameImg: playGamesImg6, rate: rate43, gameTxtFirst: housePaint, gameTxtSecond: sayGames,),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 5.h),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    GestureDetector(
                      onTap: (){
                        setState(() {
                          playStoreIndex = 1;
                        });
                      },
                      child: Column(
                        children: [
                          Icon(Icons.videogame_asset_outlined,color: (playStoreIndex != 1) ? blackColor : greenColorShade800),
                          SizedBox(height: 2.h),
                          Text(games,style: (playStoreIndex != 1) ? blackText12 : greenText12),
                        ],
                      ),
                    ),
                    GestureDetector(
                      onTap: (){
                        setState(() {
                          playStoreIndex = 0;
                        });
                      },
                      child: Column(
                        children: [
                          Icon(Icons.apps,color: (playStoreIndex == 0) ? greenColorShade800 : blackColor),
                          SizedBox(height: 2.h),
                          Text(apps,style: (playStoreIndex == 0) ? greenText12 : blackText12,),
                        ],
                      ),
                    ),
                    Column(
                      children: [
                        Icon(Icons.local_movies,color: blackColor,),
                        SizedBox(height: 2.h),
                        Text(moviesTv,style: blackText12),
                      ],
                    ),
                    Column(
                      children: [
                        Icon(Icons.book,color: blackColor,),
                        SizedBox(height: 2.h),
                        Text(books,style: blackText12),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
