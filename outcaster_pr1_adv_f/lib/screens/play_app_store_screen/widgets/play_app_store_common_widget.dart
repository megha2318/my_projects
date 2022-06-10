import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../modal_class/modal_class.dart';
import '../../../utils/colors.dart';
import '../../../utils/strings.dart';
import '../../../utils/text_style.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(width: 15.w,),
        const Icon(Icons.menu,color: blackColor,size: 30),
        SizedBox(width: 15.w,),
        Text(searchBarTxt,style: black54Text16,),
        SizedBox(width: 35.w,),
        const Icon(Icons.mic_none_rounded,color: blackColor,size: 30),
        SizedBox(width: 15.w,),
      ],
    );
  }
}


class PlayStoreRow extends StatelessWidget {
  String txt;

  PlayStoreRow({Key? key,required this.txt}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(width: 15.w,),
        Text(txt,style: blackTextBold,),
        Spacer(),
        Icon(Icons.arrow_forward,color: blackColor,),
        SizedBox(width: 15.w,),
      ],
    );
  }
}

class PlayAppImage extends StatelessWidget {
  String img;

  PlayAppImage({Key? key,required this.img}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 5.h),
      child: Container(
        height: 100.h,
        width: 100.w,
        decoration: BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.circular(20),
          image: DecorationImage(
            image: NetworkImage(img),
            fit: BoxFit.cover,
          )
        ),
      ),
    );
  }
}

class GamesScreen extends StatelessWidget {
  String rate;
  String gameTxtSecond;
  String gameImg;
  String gameNum;
  String gameTxtFirst;

  GamesScreen({Key? key,required this.rate,required this.gameTxtSecond,required this.gameTxtFirst,required this.gameImg,required this.gameNum}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 10.h),
      child: ListTile(
        leading: Container(
          height: 50.h,
          width: 30.w,
          alignment: Alignment.center,
            child: Text(gameNum)),
        title: Row(
          children: [
            Container(
              height: 50.h,
              width: 50.w,
              decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(8),
                  image: DecorationImage(
                    image: NetworkImage(gameImg),
                    fit: BoxFit.cover,
                  )
              ),
            ),
            SizedBox(
              width: 15.w,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 5.w),
                  child: Text(gameTxtFirst,style: blackText14),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 5.w),
                  child: Text(gameTxtSecond,style: greyText9),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 5.w),
                  child: Row(
                    children: [
                      Text(rate,style: greyText9),
                      starRateGrey,
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
    ;
  }
}



