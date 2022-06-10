import 'package:animation_app/models/galaxy_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../utils/color.dart';
import '../utils/text_style.dart';

class GalaxyPage extends StatefulWidget {
  const GalaxyPage({Key? key}) : super(key: key);

  @override
  State<GalaxyPage> createState() => _GalaxyPageState();
}

class _GalaxyPageState extends State<GalaxyPage> with TickerProviderStateMixin {
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

    return Scaffold(
      backgroundColor: bgColor,
      body: Column(
        children: [
          Expanded(
            flex: 2,
            child: Container(
              height: height * 0.2,
              width: width,
              decoration: BoxDecoration(
                  gradient: LinearGradient(colors: [
                    Colors.blue.shade900,
                    Colors.blueAccent,
                  ]),
                  borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(15),
                      bottomRight: Radius.circular(15))),
              child: Padding(
                padding: const EdgeInsets.only(top: 45, left: 20, right: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Icon(Icons.menu, color: whiteColor, size: 30),
                    Text(
                      "GALAXY PLANETS",
                      style: whiteTxt22,
                    ),
                    Icon(Icons.search, color: whiteColor, size: 30),
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            flex: 15,
            child: ListView.builder(
                itemCount: planets.length,
                itemBuilder: (context, i) {
                  name = planetName[i];
                  return Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: InkWell(
                      onTap: () {
                        Navigator.of(context)
                            .pushNamed("/galaxyDetailPage", arguments: i);
                      },
                      child: Stack(
                        alignment: const Alignment(-1, -0.2),
                        children: [
                          Padding(
                            padding:
                                const EdgeInsets.only(left: 45, top: 20),
                            child: Container(
                              alignment: Alignment.center,
                              height: height * 0.25,
                              width: width * 0.8,
                              decoration: BoxDecoration(
                                color: lightBlueColor,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.only(left: 80),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "${planetName[i]}",
                                          style: whiteTxt25,
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
                                        Icon(
                                          Icons.location_on,
                                          color: greyColor,
                                        ),
                                        const SizedBox(
                                          width: 10,
                                        ),
                                        Text(
                                          "${planetLocation[i]}",
                                          style: greyTxt,
                                        ),
                                        const SizedBox(
                                          width: 20,
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
                                          "${planetGravity[i]}",
                                          style: greyTxt,
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          RotationTransition(
                              turns: animationController,
                              child: Image.asset(
                                planets[i],
                                height: 100,
                              )),
                        ],
                      ),
                    ),
                  );
                }),
          ),
        ],
      ),
    );
  }
}
