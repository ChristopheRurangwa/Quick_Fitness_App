import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:video_player/video_player.dart';

class VideoListView extends StatefulWidget {
  final String vid;
  final String title;
  VideoListView(this.vid, this.title);

  @override
  _VideoListViewState createState() => _VideoListViewState();
}

class _VideoListViewState extends State<VideoListView> {
  late VideoPlayerController controller;

  void initState() {
    super.initState();
    controller = VideoPlayerController.asset(widget.vid)
      ..addListener(() => setState(() {}))
      ..setLooping(true)
      ..initialize().then((_) => controller.pause());
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  Container stretchVidoesViews() {
    return controller != null && controller.value.isInitialized
        ? Container(
            height: 415,
            child: Card(
              child: AspectRatio(
                  aspectRatio: controller.value.aspectRatio,
                  child: VideoPlayer(controller)),
              color: Colors.greenAccent,
            ))
        : Container(
            child: Center(
                child: CircularProgressIndicator(
              color: Colors.greenAccent,
            )),
          );
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: () {
        controller.value.isPlaying ? controller.pause() : controller.play();
      },
      child: Stack(children: [
        Container(
          child: Center(child: stretchVidoesViews()),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            widget.title,
            style: GoogleFonts.autourOne(
                color: Colors.green, fontWeight: FontWeight.bold),
          ),
        ),
        Center(child: playOrPause()),
      ]),
    );
  }

  Widget playOrPause() {
    return controller.value.isPlaying
        ? Container()
        : Container(
            color: Colors.black26,
            height: 415,
            child: Center(
                child: Icon(
              Icons.play_arrow_outlined,
              color: Colors.white,
              size: 83,
            )));
  }
}
