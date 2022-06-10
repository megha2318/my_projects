import 'package:chewie/chewie.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';
import '../../../modal_class/modal_class.dart';
import '../../../utils/colors.dart';
import '../../../utils/routes.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      appBar: AppBar(
        title: Text(
          "Video Player",
          style: TextStyle(color: blackColor),
        ),
        centerTitle: true,
        backgroundColor: whiteColor,
        elevation: 0,
      ),
      body: Column(
        children: [
          Expanded(
            flex: 1,
            child: Container(
              height: 8,
              width: 60,
              decoration: BoxDecoration(
                color: blackColor,
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Expanded(
            flex: 65,
            child: ListView.builder(
                itemCount: videoPlay.length,
                itemBuilder: (context, i) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 8.0, vertical: 5),
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          controller = VideoPlayerController.network(
                            videoPlay[i],
                          )..initialize().then((_) {
                              chewieController = ChewieController(
                                videoPlayerController: controller,
                                showControls: true,
                                materialProgressColors: ChewieProgressColors(
                                    playedColor: whiteColor,
                                    handleColor: whiteColor),
                              );
                              chewieController.isFullScreen;
                              // Ensure the first frame is shown after the video is initialized, even before the play button has been pressed.
                              setState(() {});
                            });
                          Navigator.of(context).pushNamed(
                              AppRoutes.audioPlayerScreen,
                              arguments: i);
                        });
                      },
                      child: Padding(
                        padding:
                            const EdgeInsets.only(top: 20, left: 5, right: 5),
                        child: Container(
                          height: 200,
                          width: 150,
                          decoration: BoxDecoration(
                              color: whiteColor,
                              borderRadius: BorderRadius.circular(10)),
                          child: Stack(
                            alignment: Alignment.bottomCenter,
                            children: [
                              const SizedBox(
                                width: 20,
                                height: 10,
                              ),
                              Container(
                                height: 200,
                                width: 400,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    image: DecorationImage(
                                      image: NetworkImage(videoImage[i]),
                                      fit: BoxFit.cover,
                                    )),
                              ),
                              const SizedBox(
                                width: 20,
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  videoName[i],
                                  style: TextStyle(
                                      fontSize: 20,
                                      color: whiteColor,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                            ],
                          ),
                        ),
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
