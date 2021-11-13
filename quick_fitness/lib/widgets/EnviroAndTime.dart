import 'package:flutter/material.dart';
import 'package:quick_fitness/widgets/videoListView.dart';

class EnviroAndTime extends StatefulWidget {
  final String vid;
  final String title;
  EnviroAndTime(this.vid, this.title);

  @override
  _EnviroAndTimeState createState() => _EnviroAndTimeState();
}

class _EnviroAndTimeState extends State<EnviroAndTime> {
  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      VideoListView(widget.vid, widget.title),
    ]);
  }
}
