import 'package:flutter/material.dart';
import 'package:quick_fitness/widgets/videoListView.dart';
import 'package:video_player/video_player.dart';

import '../../menuScreen.dart';

class Stretch extends StatefulWidget {
  @override
  _StretchState createState() => _StretchState();
}

class _StretchState extends State<Stretch> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(32.0),
        child: AppBar(
          leadingWidth: 43,
          elevation: 122,
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => MenuScrn()));
            },
          ),
          title: Center(child: Text("Stretch")),
        ),
      ),
      body: ListView(children: [
        SizedBox(
          height: 22,
        ),
        VideoListView("assets/video/bhands.mp4", "Shoulder-Stretch"),
        Divider(
          color: Colors.black,
        ),
        VideoListView(
            "assets/video/kneeWarmUpStretch.mp4", "Knee-Stretch Warm Up"),
        Divider(
          color: Colors.black,
        ),
        VideoListView("assets/video/legstretch.mp4", "Leg-Stretch"),
        Divider(
          color: Colors.black,
        ),
        VideoListView("assets/video/backstretch.mp4", "Back-Stretch"),
        Divider(
          color: Colors.black,
        ),
        VideoListView("assets/video/neckstretch.mp4", "Neck-Stretch"),
        Divider(
          color: Colors.black,
        ),
        VideoListView(
            "assets/video/GeneralStretchandwarmup.mp4", "Strecth And Warm-up"),
        Divider(
          color: Colors.black,
        ),
      ]),
    );
  }
}
