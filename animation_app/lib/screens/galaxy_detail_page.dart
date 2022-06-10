import 'dart:async';
import 'package:flutter/material.dart';
import '../models/galaxy_model.dart';
import '../utils/color.dart';
import '../utils/text_style.dart';

class GalaxyDetailPage extends StatefulWidget {
  const GalaxyDetailPage({Key? key}) : super(key: key);

  @override
  State<GalaxyDetailPage> createState() => _GalaxyDetailPageState();
}

class _GalaxyDetailPageState extends State<GalaxyDetailPage>
    with TickerProviderStateMixin {
  late AnimationController animationController;

  @override
  void initState() {
    super.initState();
    animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 6000),
    )..repeat();
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
    dynamic args = ModalRoute.of(context)?.settings.arguments;
    id = args;

    return Scaffold(
      backgroundColor: bgColor,
      body: Column(
        children: [
          const Spacer(),
          Expanded(
            flex: 12,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Stack(
                  alignment: const Alignment(0, -1.7),
                  children: [
                    Container(
                      alignment: Alignment.center,
                      height: height * 0.3,
                      width: width * 0.9,
                      decoration: BoxDecoration(
                        color: lightBlueColor,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const SizedBox(
                            height: 50,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "${planetName[args]}",
                                style: whiteTxt30,
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Text(
                                milkywayGalaxy,
                                style: greyTxt,
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 30,
                            width: 20,
                          ),
                          Row(
                            children: [
                              const SizedBox(
                                width: 35,
                              ),
                              Icon(
                                Icons.location_on,
                                color: greyColor,
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Text(
                                "${planetLocation[args]}",
                                style: greyTxt,
                              ),
                              const SizedBox(
                                width: 100,
                              ),
                              Image.network(
                                "https://cdn0.iconfinder.com/data/icons/navigation-set-arrows-part-one/32/DoubleArrowLeftRight-512.png",
                                height: 20,
                                color: greyColor,
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Text(
                                "${planetGravity[args]}",
                                style: greyTxt,
                              ),
                              const SizedBox(
                                width: 30,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    InkWell(
                      onTap: (){
                        bottomSheet(args);
                      },
                      child: RotationTransition(
                          turns: animationController,
                          child: Image.asset(
                            planets[args],
                            height: 100,
                          )),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 40, bottom: 30),
                  child: Text(
                    overview,
                    style: whiteTxt22,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 20,
                    right: 20,
                  ),
                  child: Text(
                    "${planetDetail[args]}",
                    style: whiteTxt18,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              height: height * 0.1,
              width: width,
              decoration: BoxDecoration(
                  gradient: LinearGradient(colors: [
                    Colors.blue.shade800,
                    Colors.blueAccent,
                  ]),
                  borderRadius: const BorderRadius.only(
                      topRight: Radius.circular(15),
                      topLeft: Radius.circular(15))),
              child: InkWell(
                onTap: () {
                  Navigator.of(context).pop();
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Icon(
                      Icons.arrow_back_ios,
                      color: whiteColor,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Text(
                      "BACK",
                      style: whiteTxt22,
                    ),
                    const SizedBox(
                      width: 30,
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  bottomSheet(i) {
    return showModalBottomSheet(
        context: context,
        builder: (context) => Stack(
              children: [
                Container(
                  height: 500,
                  width: double.infinity,
                  color: lightBlueColor,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const SizedBox(
                        height: 50,
                      ),
                      Image.asset(
                        planets[i],
                        height: 120,
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Text(
                        "Distance to Sun",
                        style: greyTxt18,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        "${distanceToSun[i]}",
                        style: whiteTxt30,
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Text(
                        "Distance to Earth",
                        style: greyTxt18,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        "${distanceToEarth[i]}",
                        style: whiteTxt30,
                      ),
                    ],
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  height: 80,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      gradient: LinearGradient(colors: [
                        Colors.blue.shade800,
                        Colors.blueAccent,
                      ]),
                      borderRadius: BorderRadius.only(
                          bottomRight: Radius.circular(15),
                          bottomLeft: Radius.circular(15))),
                  child: Text(
                    "Welcome to ${planetName[i]}",
                    style: whiteTxt30,
                  ),
                ),
              ],
            ));
  }
}
