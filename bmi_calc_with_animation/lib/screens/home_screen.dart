import 'package:flutter/material.dart';
import '../utils/colors.dart';
import '../utils/strings.dart';
import '../utils/text_style.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  Color maleColor = lightWhiteColor;
  Color femaleColor = lightWhiteColor;
  double sliderVal = 50;
  int w = 0;
  int a = 0;
  late AnimationController animationController;
  late Animation maleAnimation;
  late Animation femaleAnimation;
  late Animation heightAnimation;
  late Animation weightAnimation;
  late Animation ageAnimation;

  @override
  void initState() {
    super.initState();

    animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1000),
    );

    maleAnimation =
        Tween<double>(begin: -300, end: 0).animate(animationController);
    femaleAnimation =
        Tween<double>(begin: 300, end: 0).animate(animationController);
    heightAnimation =
        Tween<double>(begin: 300, end: 0).animate(animationController);
    weightAnimation =
        Tween<double>(begin: -300, end: 0).animate(animationController);
    ageAnimation =
        Tween<double>(begin: 300, end: 0).animate(animationController);

    if (isAnimation == false) {
      animationController.forward();
    } else {
      maleAnimation =
          Tween<double>(begin: 0, end: 0).animate(animationController);
      femaleAnimation =
          Tween<double>(begin: 0, end: 0).animate(animationController);
      heightAnimation =
          Tween<double>(begin: 0, end: 0).animate(animationController);
      weightAnimation =
          Tween<double>(begin: 0, end: 0).animate(animationController);
      ageAnimation =
          Tween<double>(begin: 0, end: 0).animate(animationController);
    }
    animationController.addListener(() {
      setState(() {});
    });
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: bgColor,
      body: Column(
        children: [
          Padding(
            padding:
                const EdgeInsets.only(left: 20, top: 40, right: 20, bottom: 60),
            child: Row(
              children: [
                Text(
                  bmiCalculator,
                  style: whiteTxt30,
                ),
                const Spacer(),
                Icon(
                  Icons.refresh,
                  size: 30,
                  color: whiteColor,
                ),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              AnimatedBuilder(
                animation: animationController,
                child: maleFemaleContainer(
                    height, width, male, Icons.male, maleColor),
                builder: (context, child) => Transform.translate(
                  offset: Offset(maleAnimation.value, 0),
                  child: child,
                ),
              ),
              AnimatedBuilder(
                animation: animationController,
                child: maleFemaleContainer(
                    height, width, female, Icons.female, femaleColor),
                builder: (context, child) => Transform.translate(
                  offset: Offset(femaleAnimation.value, 0),
                  child: child,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 50,
          ),
          AnimatedBuilder(
            animation: animationController,
            child: Container(
              height: height * 0.19,
              width: width * 0.91,
              decoration: BoxDecoration(
                color: darkGreyColor,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    heightS,
                    style: whiteTxt18,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        sliderVal.toString().split(".")[0],
                        style: whiteTxt40,
                      ),
                      Text(
                        " cm",
                        style: whiteTxt18,
                      ),
                    ],
                  ),
                  Slider(
                      thumbColor: deepPinkColor,
                      inactiveColor: whiteColor.withOpacity(0.4),
                      activeColor: deepPurpleColor,
                      min: 50,
                      max: 250,
                      value: sliderVal,
                      onChanged: (val) {
                        setState(() {
                          sliderVal = val;
                        });
                      }),
                ],
              ),
            ),
            builder: (context, child) => Transform.translate(
              offset: Offset(heightAnimation.value, 0),
              child: child,
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              AnimatedBuilder(
                animation: animationController,
                child: weightAgeContainer(height, width, weight, w),
                builder: (context, child) => Transform.translate(
                  offset: Offset(weightAnimation.value, 0),
                  child: child,
                ),
              ),
              AnimatedBuilder(
                animation: animationController,
                child: weightAgeContainer(height, width, age, a),
                builder: (context, child) => Transform.translate(
                  offset: Offset(ageAnimation.value, 0),
                  child: child,
                ),
              ),
            ],
          ),
          const Spacer(),
          InkWell(
            onTap: () {
              if (maleColor == deepPinkColor ||
                  femaleColor == deepPinkColor &&
                      sliderVal > 50 &&
                      w > 0 &&
                      a > 0) {
                double h = sliderVal / 100;
                double bmi = w / (h * h);

                Navigator.of(context).pushReplacementNamed("/finalPage",
                    arguments: bmi.roundToDouble());
              } else {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text("Please Enter all Inputs"),
                  ),
                );
              }
            },
            child: Container(
              alignment: Alignment.center,
              height: height * 0.07,
              width: width,
              color: deepPinkColor,
              child: Text(
                "CALCULATE YOUR BMI",
                style: whiteTxt20,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget maleFemaleContainer(
      double height, double width, String mF, IconData mFIcon, Color mFColor) {
    return InkWell(
      onTap: () {
        setState(() {
          if (mF == male) {
            maleColor = (maleColor == lightWhiteColor)
                ? deepPinkColor
                : lightWhiteColor;
            femaleColor = (femaleColor == deepPinkColor)
                ? lightWhiteColor
                : lightWhiteColor;
          } else {
            femaleColor = (femaleColor == lightWhiteColor)
                ? deepPinkColor
                : lightWhiteColor;
            maleColor = (maleColor == deepPinkColor)
                ? lightWhiteColor
                : lightWhiteColor;
          }
        });
      },
      child: Container(
        alignment: Alignment.center,
        height: height * 0.18,
        width: width * 0.42,
        decoration: BoxDecoration(
          color: darkGreyColor,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(
              mFIcon,
              size: 80,
              color: mFColor,
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              mF,
              style: whiteTxt18,
            ),
          ],
        ),
      ),
    );
  }

  Widget weightAgeContainer(height, width, wa, int wai) {
    return Container(
      height: height * 0.23,
      width: width * 0.42,
      decoration: BoxDecoration(
        color: darkGreyColor,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Text(
            wa,
            style: whiteTxt18,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "$wai",
                style: whiteTxt40,
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              FloatingActionButton(
                onPressed: () {
                  setState(() {
                    (wai == w) ? w++ : a++;
                  });
                },
                backgroundColor: lightBlackColor,
                child: const Text(
                  "+",
                  style: TextStyle(fontSize: 20),
                ),
              ),
              FloatingActionButton(
                onPressed: () {
                  setState(() {
                    if (w > 0 || a > 0) {
                      (wai == w) ? w-- : a--;
                    }
                  });
                },
                backgroundColor: lightBlackColor,
                child: const Text(
                  "-",
                  style: TextStyle(fontSize: 20),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
