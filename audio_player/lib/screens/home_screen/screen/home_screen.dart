import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:flutter/material.dart';
import 'package:media_booster_pr2_adv_f/utils/colors.dart';
import 'package:media_booster_pr2_adv_f/utils/routes.dart';
import '../../../modal_class/modal_class.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Text("RainBow Music"),
        centerTitle: true,
        backgroundColor: Colors.black,
        elevation: 0,
      ),
      body: ListView.builder(
          itemCount: audioPlay.length,
          itemBuilder: (context,i){

            index = audioPlay[i];

        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0,vertical: 5),
          child: InkWell(
            onTap: (){
              myAudioPlayer.open(
                Audio(audioPlay[i]),
                autoStart: false,
              );
              Navigator.of(context).pushNamed(AppRoutes.audioPlayerScreen,arguments: i);
            },
            child: Container(
                height: 100,
                width: 150,
                decoration: BoxDecoration(
                color: myColors[i],
                  borderRadius: BorderRadius.circular(10)
                ),
                child: Row(
                  children: [
                    const SizedBox(width: 20,),
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                            image: NetworkImage(audioImage[i]),
                            fit: BoxFit.cover,
                          )
                      ),
                    ),
                    const SizedBox(width: 20,),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("${audioName[i]}",style: TextStyle(
                          fontSize: 18,
                          color: whiteColor,
                          fontWeight: FontWeight.bold
                        ),),
                        Text("${audioArtist[i]}",style: TextStyle(
                            color: whiteColor,
                        ),),
                      ],
                    ),
                    const Spacer(),
                    Icon(Icons.play_arrow,color: whiteColor,),
                    const SizedBox(width: 20,)
                  ],
                ),
              ),
          ),
        );
      }),
    );
  }
}