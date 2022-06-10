import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../utils/colors.dart';

class SignUp{
  String name = "";
  String email = "";
  String password = "";
  String confirmPassword = "";
}

SignUp signUpStepper = SignUp();

class LogIn{
  String userName = "";
  String logInPassword = "";
}

LogIn logInStepper = LogIn();


class EditYourProfileStepper{
  String name = "";
  String email = "";
  String phone = "";
  String dob = "";
  String gender = "";
  String nationality = "";
  String location = "";
  String religion = "";
  String biography = "";
  String language = "";
}

EditYourProfileStepper editYourProfileStepper = EditYourProfileStepper();


bool nextPage = false;
Icon circleIconBlue = const Icon(Icons.add_circle_outline_rounded,color: blueColor);


class CupertinoStore{
  bool cupertinoStore = false;
}


IconData arrow_foarrow_forward_ios_outlined = CupertinoIcons.chevron_forward;


int index = 0;
Icon starRate = const Icon(Icons.star_rate,size: 10,color: blackColor);
Icon starRateGrey = const Icon(Icons.star_rate,size: 10,color: greyColor);

