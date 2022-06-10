import 'package:bmi_calc/utils/colors.dart';
import 'package:bmi_calc/utils/text_style.dart';
import 'package:flutter/material.dart';
import '../utils/strings.dart';

class FinalPage extends StatefulWidget {
  const FinalPage({Key? key}) : super(key: key);

  @override
  State<FinalPage> createState() => _FinalPageState();
}

class _FinalPageState extends State<FinalPage> {

  @override
  void initState() {
    super.initState();

    isAnimation = true;
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery
        .of(context)
        .size
        .height;
    double width = MediaQuery
        .of(context)
        .size
        .width;
    dynamic args = ModalRoute
        .of(context)!
        .settings
        .arguments;

    return Scaffold(
      backgroundColor: bgColor,
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20, top: 30),
            child: Row(
              children: [
                Text("Your BMI Result", style: whiteTxt30,),
              ],
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 135,),
              (args > 18 && args < 25)
                  ? Text(normalWeight, style: greenTxt24)
                  : (args > 25) ? Text(overWeight, style: redTxt24,) : Text(
                underWeight, style: yellowTxt24,),
              const SizedBox(height: 135,),
              Text("$args", style: TextStyle(
                  fontSize: 60,
                  color: whiteColor
              ),),
              const SizedBox(height: 135,),
              Text("You have a ${(args > 18 && args < 25)
                  ? normal + " body"
                  : (args > 25) ? over : under} ", style: lightWhiteTxt26,),
              Text((args > 18 && args < 25) ? weit + " Good Job" : weit,
                  style: lightWhiteTxt26),
              const SizedBox(height: 135,),
              InkWell(
                onTap: () {
                  Navigator.of(context).pushReplacementNamed("/");
                },
                child: Container(
                  alignment: Alignment.center,
                  height: height * 0.07,
                  width: width,
                  color: deepPinkColor,
                  child: Text("RE-CALCULATE", style: whiteTxt20,),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
