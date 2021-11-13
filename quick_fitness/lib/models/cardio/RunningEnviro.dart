import 'dart:core';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quick_fitness/widgets/EnviroAndTime.dart';
import 'package:quick_fitness/widgets/videoListView.dart';
import 'package:stop_watch_timer/stop_watch_timer.dart';

import '../../menuScreen.dart';
import '../../seasonMenu.dart';

class RunningEnviro extends StatefulWidget {
  String vid;
  String season;
  RunningEnviro(this.vid, this.season);

  final StopWatchTimer _sportTimer = StopWatchTimer();
  final isHours = true;

  @override
  void dispose() {
    _sportTimer.dispose();
  }

  @override
  _RunningEnviroState createState() => _RunningEnviroState();
}

class _RunningEnviroState extends State<RunningEnviro> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Stack(children: [
            EnviroAndTime(widget.vid, widget.season),
            Center(
              child: Card(
                color: Colors.black12,
                elevation: 113,
                child: Container(
                  color: Colors.black12,
                  height: 72,
                  width: 205,
                  child: StreamBuilder<int>(
                    stream: widget._sportTimer.rawTime,
                    initialData: widget._sportTimer.rawTime.value,
                    builder: (context, snapshot) {
                      final value = snapshot.data;
                      final displayTime = StopWatchTimer.getDisplayTime(value!,
                          hours: widget.isHours);
                      return Center(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            displayTime,
                            style: GoogleFonts.titilliumWeb(
                                fontWeight: FontWeight.w900,
                                fontSize: 40,
                                color: Colors.blueAccent),
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ),
            ),
          ]),
          SizedBox(
            height: 53,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              color: Colors.transparent,
              height: 223,
              child: Card(
                color: Colors.black12,
                elevation: 22,
                child: Row(
                  children: [
                    Flexible(
                        child: InkWell(
                      child: Icon(
                        Icons.play_circle_fill_rounded,
                        size: 100,
                        color: Colors.green,
                      ),
                      onTap: () {
                        widget._sportTimer.onExecute
                            .add(StopWatchExecute.start);
                      },
                    )),
                    SizedBox(
                      width: 53,
                    ),
                    Flexible(
                        child: InkWell(
                      child: Icon(
                        Icons.pause,
                        size: 100,
                        color: Colors.red,
                      ),
                      onTap: () {
                        widget._sportTimer.onExecute.add(StopWatchExecute.stop);
                      },
                    )),
                    SizedBox(
                      width: 53,
                    ),
                    Flexible(
                        child: InkWell(
                      child: Icon(
                        Icons.restore_page_rounded,
                        size: 100,
                        color: Colors.teal,
                      ),
                      onTap: () {
                        widget._sportTimer.onExecute
                            .add(StopWatchExecute.reset);
                      },
                    )),
                    SizedBox(
                      width: 53,
                    ),
                    Flexible(
                        child: InkWell(
                      child: Icon(
                        Icons.arrow_back_ios_outlined,
                        size: (100 / 2),
                        color: Colors.blue,
                      ),
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => SeasonMenu()));
                      },
                    ))
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
