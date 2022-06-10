import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextStyle style = const TextStyle(fontSize: 40, color: Colors.black);

  int s = 0;
  int m = 0;
  int h = 0;
  String? s1 = "0";
  String? m1 = "0";
  String? h1 = "0";

  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 1), () {
      setState(() {
        if (s < 59) {
          s++;
        } else {
          s = 0;
          s1 = "0";
          m += 1;
          if (m > 59) {
            m = 0;
            m1 = "0";
            h += 1;
          }
        }
        if(s>9){
          s1 = "";
        }
        if(m>9){
          m1 = "";
        }
        if(h>9){
          h1 = "";
        }
      });
    });
    return Scaffold(
      body: Stack(
        children: [
          Transform.scale(
            alignment: Alignment.center,
              scale: 5,
              child: Image.asset("assets/images/img2.gif"),),
          Container(
            alignment: Alignment.center,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 80, vertical: 10),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                        color: Colors.black.withOpacity(0.5),
                        width: 5
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("$h1$h : ", style: style),
                        Text("$m1$m : ", style: style),
                        Text("$s1$s", style: style),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
