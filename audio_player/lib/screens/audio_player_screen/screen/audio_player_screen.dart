import 'dart:developer';
import 'dart:ui';
import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:flutter/material.dart';
import '../../../modal_class/modal_class.dart';
import '../../../utils/colors.dart';
import '../../../utils/text_style.dart';

class AudioPlayerScreen extends StatefulWidget {
  const AudioPlayerScreen({Key? key}) : super(key: key);

  @override
  State<AudioPlayerScreen> createState() => _AudioPlayerScreenState();
}

class _AudioPlayerScreenState extends State<AudioPlayerScreen> {
  IconData playPauseIcon = Icons.play_arrow;
  IconData volumeIcon =  Icons.headset;
  int i = 0;

  TextStyle whiteBoldTxt20 = TextStyle(
      fontSize: 20,
      color: whiteColor,
      fontWeight: FontWeight.bold
  );
  String? totalDuration;
  String? currentPosition;

  double totalDurationInSeconds = 0;
  double currentPositionInSeconds = 0;

  bool autoStart = true;

  @override
  void initState() {
    super.initState();

    myAudioPlayer.current.listen((Playing? playing) {
      setState(() {
        totalDuration = playing!.audio.duration.toString().split(".")[0];
        totalDurationInSeconds = playing.audio.duration.inSeconds.toDouble();
      });
    });

    myAudioPlayer.currentPosition.listen((Duration duration) {
      setState(() {
        currentPosition = duration.toString().split(".")[0];
        currentPositionInSeconds = duration.inSeconds.toDouble();
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    dynamic args = ModalRoute.of(context)!.settings.arguments;

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Stack(
              children: [
                ClipRRect(
                  child: ImageFiltered(
                    imageFilter: ImageFilter.blur(sigmaX: 0, sigmaY: 0),
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        Container(
                          height: height,
                          width: width,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: NetworkImage(audioImage[args]),
                                  fit: BoxFit.cover)),
                          // child: Image.network(audioImage[i])
                        ),
                        Container(
                          height: height,
                          width: width,
                          color: blackColor.withOpacity(0.6),
                        )
                      ],
                    ),
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: height * .15,
                      width: width,
                      color: blackColor,
                      child: Padding(
                        padding: const EdgeInsets.only(top: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            const SizedBox(width: 10,),
                            IconButton(onPressed: (){
                              Navigator.of(context).pop();
                              myAudioPlayer.stop();
                              setState(() {
                              });
                            }, icon: const Icon(Icons.arrow_back),color: whiteColor,),
                            const SizedBox(width: 50,),
                            Text("Now Playing",style: whiteBoldTxt20),
                            const SizedBox(width: 90,),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(height: 80,),
                   Container(
                     height: 250,
                     width: 250,
                     decoration: BoxDecoration(
                         borderRadius: BorderRadius.circular(20),
                         image: DecorationImage(
                           image: NetworkImage(audioImage[args]),
                           fit: BoxFit.cover,
                         )),
                   ),
                   const SizedBox(
                     height: 30,
                   ),
                    Text("${audioNamePlay[args]}",style: whiteBoldTxt20),
                    const SizedBox(
                      height: 10,
                    ),
                    Text("${audioArtistPlay[args]}",style: TextStyle(
                      color: whiteColor
                    )),
                    const SizedBox(
                      height: 20,
                    ),
                   Center(
                     child: Row(
                       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                       children: [
                         IconButton(
                           onPressed: () {
                             myAudioPlayer.stop();
                             playPauseIcon = Icons.play_arrow;
                             setState(() {});
                           },
                           icon: SizedBox(
                             height: 0,
                             child: Icon(
                               Icons.stop,
                               color: whiteColor,
                               size: 30,
                             ),
                           ),
                         ),
                         IconButton(
                           onPressed: () {
                             setState(() {
                               (myAudioPlayer.isPlaying.value == true)
                                   ? playPauseIcon = Icons.play_arrow
                                   : playPauseIcon = Icons.pause;
                             });
                             (myAudioPlayer.isPlaying.value)
                                 ? log("pause current $i")
                                 : log("play current $i");

                             (myAudioPlayer.isPlaying.value)
                                 ? myAudioPlayer.pause()
                                 : myAudioPlayer.play();
                           },
                           icon: Icon(
                             playPauseIcon,
                             color: whiteColor,
                             size: 70,
                           ),
                         ),
                         const SizedBox(width: 0.05),
                         IconButton(
                           onPressed: () {
                             if(myAudioPlayer.volume.value != 0){
                               myAudioPlayer.setVolume(0);
                               volumeIcon = Icons.headset_off;
                               setState(() {
                               });
                             }
                             else if(myAudioPlayer.volume.value == 0){
                               myAudioPlayer.setVolume(1);
                               volumeIcon = Icons.headset;
                               setState(() {});
                             }
                           },
                           icon: SizedBox(
                             height: 0,
                             child: Icon(
                              volumeIcon,
                               color: whiteColor,
                               size: 30,
                             ),
                           ),
                         ),
                       ],
                     ),
                   ),
                    const SizedBox(height: 30,),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 12),
                      child: Slider(
                          activeColor: myColors[args],
                          inactiveColor: whiteColor.withOpacity(0.7),
                          thumbColor: myColors[args],
                          value: currentPositionInSeconds,
                          min: 0,
                          max: totalDurationInSeconds,
                          onChanged: (val) {
                            currentPositionInSeconds = val;
                            myAudioPlayer.seek(Duration(seconds: val.toInt()));
                          }),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 40),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "$currentPosition / $totalDuration",
                            style: whiteTxt,
                          ),
                        ],
                      ),
                    ),
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
