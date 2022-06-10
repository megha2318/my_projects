import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../model_class/model_class.dart';

class IntroScreen extends StatefulWidget {
  const IntroScreen({Key? key}) : super(key: key);

  @override
  State<IntroScreen> createState() => _IntroScreenState();
}

class _IntroScreenState extends State<IntroScreen> {
  int currentIndex = 0;

  checkIsIntro()async{
    SharedPreferences prefs = await SharedPreferences.getInstance();
    bool isIntroScreen = prefs.getBool("isSignUp") ?? true;
    prefs.setBool("isSignUp",isIntroScreen);
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    checkIsIntro();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: currentIndex,
        children: introImages.map((e) =>
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Spacer(),
                Image(image: NetworkImage(
                    introImages[currentIndex]
                )),
                const Spacer(),
                const Padding(
                  padding:  EdgeInsets.symmetric(horizontal: 30),
                  child: Text("Lorem Ipsum is simply dummy text of the \nprinting and typesetting industry. \n"
                      "Lorem Ipsum has been the industry's standard\n dummy text ever since the 1500s, when an \n.",style: TextStyle(
                      color: Colors.grey
                  )),
                ),
                const Spacer(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    TextButton(onPressed: (){
                      Navigator.of(context).pushReplacementNamed('/homeScreen');
                    }, child: const Text("SKIP",style:  TextStyle(
                        color: Colors.black54
                    ),),),
                    TextButton(onPressed: (){
                      setState(() {
                        if(currentIndex  < 3){
                          currentIndex++;
                        }
                        else{
                          Navigator.of(context).pushReplacementNamed('/homeScreen');
                        }
                      });
                    }, child: const Text("NEXT"),),
                  ],
                ),
                const SizedBox(height: 30,),
              ],
            )).toList(),
      ),
    );
  }
}