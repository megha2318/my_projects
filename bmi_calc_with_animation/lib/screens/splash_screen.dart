import 'dart:async';
import 'package:bmi_calc/utils/colors.dart';
import 'package:bmi_calc/utils/text_style.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    Timer(const Duration(seconds: 5), () {
      Navigator.of(context).pushReplacementNamed("/");
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(
              height: 120,
            ),
            Container(
                height: 100,
                width: 100,
                decoration:
                    BoxDecoration(color: whiteColor, shape: BoxShape.circle),
                child: Transform.scale(
                    scale: 0.5,
                    child: Image.asset(
                      "assets/images/heart.png",
                      height: 10,
                      color: deepPinkColor,
                    ))),
            const SizedBox(
              height: 20,
            ),
            Text(
              "BMI CALCULATOR",
              style: whiteTxt30,
            ),
            const Spacer(),
            CircularProgressIndicator(
              color: deepPinkColor,
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              "Check Your BMI",
              style: whiteTxt20,
            ),
            const SizedBox(
              height: 120,
            ),
          ],
        ),
      ),
    );
  }
}
