import 'package:animation_app/screens/galaxy_detail_page.dart';
import 'package:animation_app/screens/galaxy_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        "/": (context) => GalaxyPage(),
        "/galaxyDetailPage": (context) => GalaxyDetailPage(),
      },
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {

 late AnimationController animationController;
  String moonBackground = "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRTLnvdU_HPQEPAnEU9FDpH-_eh4NAb5TkrbA&usqp=CAU";

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    animationController = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 2000),
    );
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Column(
        children: [
          Stack(
            alignment: Alignment(0,0),
            children: [
              Container(
                height: height,
                width: width,
                decoration: BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage(moonBackground),
                      fit: BoxFit.cover,
                    )
                ),
              ),
              Column(
                children: [
                  RotationTransition(
                    turns: animationController,
                    child: Image.asset("assets/image/moon4.png",height: 320,),),
                  SizedBox(height: 432,),
                  Container(
                    alignment: Alignment.center,
                    height:  height * 0.08,
                    width: width,
                    color: Colors.white,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        IconButton(onPressed: (){
                          animationController.forward();
                        }, icon: const Icon(Icons.refresh,size: 30,),),
                        IconButton(onPressed: (){
                          animationController.reverse();
                        }, icon: const Icon(Icons.replay_circle_filled_outlined,size: 30,),),
                        IconButton(onPressed: (){
                          animationController.repeat();
                        }, icon: const Icon(Icons.repeat,size: 30,),),
                        IconButton(onPressed: (){
                          animationController.stop();
                        }, icon: const Icon(Icons.stop,size: 30,),),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}

