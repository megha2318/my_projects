import 'dart:async';
import 'package:chewie/chewie.dart';
import 'package:flutter/material.dart';
import '../../../modal_class/modal_class.dart';
import '../../../utils/colors.dart';

class VideoPlayerScreen extends StatefulWidget {
  @override
  _VideoPlayerScreenState createState() => _VideoPlayerScreenState();
}

class _VideoPlayerScreenState extends State<VideoPlayerScreen> {
  @override
  initState() {
    super.initState();
    Timer.periodic(const Duration(milliseconds: 400), (vl) {
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    dynamic args = ModalRoute.of(context)!.settings.arguments;
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
            child: Stack(
              children: [
                Container(
                  alignment: Alignment.center,
                  height: double.infinity,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: controller.value.isInitialized
                      ? Chewie(
                          controller: chewieController,
                        )
                      : const CircularProgressIndicator(),
                ),
                Row(
                  children: [
                    const SizedBox(
                      width: 30,
                    ),
                    IconButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        icon: Icon(
                          Icons.arrow_back_ios,
                          color: whiteColor,
                        )),
                    Text(
                      videoName[args],
                      style: TextStyle(fontSize: 18, color: whiteColor),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
