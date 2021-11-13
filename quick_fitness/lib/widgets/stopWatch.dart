import 'dart:async';

import 'package:circular_countdown/circular_countdown.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:quick_fitness/provider/ExercisesPartsCounts.dart';

import '../menuScreen.dart';

class StopWatch extends StatefulWidget {
  int dura;
  CountdownUnit unt;
  StopWatch(this.dura, this.unt);

  @override
  _StopWatchState createState() => _StopWatchState();
}

class _StopWatchState extends State<StopWatch> {
  @override
  Widget build(BuildContext context) {
    final timeDat = Provider.of<ExercisesPartsCounts>(context);

    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Container(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 22,
                  ),
                  SizedBox(
                    height: 22,
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 22,
                      ),
                      Text(
                        "Min.\t\t",
                        style: GoogleFonts.timmana(
                            color: Colors.cyanAccent.shade700, fontSize: 30),
                      ),
                      Flexible(
                        child: TimeCircularCountdown(
                          countdownTotalColor: Colors.greenAccent,

                          countdownRemainingColor: Colors.blue,
                          strokeWidth: 23,
                          countdownCurrentColor: Colors.cyanAccent,
                          textStyle: GoogleFonts.abrilFatface(
                            color: Colors.cyanAccent,
                            fontSize: 45,
                          ),
                          diameter: 333,
                          isClockwise: true,
                          repeat: false,
                          unit: CountdownUnit.minute,
                          countdownTotal: timeDat.minutes,
                          // onUpdated: (unit, remainingTime) => workOutDone,
                          //onFinished: () => () {

                          // },
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 22,
                  ),
                  Row(
                    children: [
                      Flexible(
                        child: Container(
                          child: TimeCircularCountdown(
                            countdownRemainingColor: Colors.yellow,
                            strokeWidth: 23,
                            countdownCurrentColor: Colors.red,
                            shouldDowngradeUnit: true,
                            textStyle: GoogleFonts.abrilFatface(
                                color: Colors.red, fontSize: 30),
                            diameter: 133,
                            isClockwise: true,
                            repeat: true,
                            unit: CountdownUnit.second,
                            countdownTotal: 60,
                            countdownTotalColor: Colors.greenAccent,
                            onUpdated: (unit, remainingTime) {},
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 32,
                      ),
                      Container(
                        child: Text(
                          "Secs.",
                          style: GoogleFonts.timmana(
                              color: Colors.red.shade900, fontSize: 26),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 21,
                  ),
                  LinearProgressIndicator(
                    color: Colors.cyan,
                  ),
                  Divider(
                    color: Colors.green,
                    thickness: 0.6,
                  ),
                  Container(
                      color: Colors.transparent,
                      height: 233,
                      width: 233,
                      child: Row(
                        children: [
                          ElevatedButton(
                            child: Text(
                              "BACK",
                              style: GoogleFonts.acme(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                            ),
                            onPressed: () {
                              Navigator.pop(context, true);
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => MenuScrn(),
                                  ));
                            },
                          ),
                          SizedBox(
                            width: 12,
                          ),
                          ElevatedButton(
                            child: Text(
                              "+ MIN.",
                              style: GoogleFonts.acme(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                            ),
                            onPressed: () {
                              timeDat.addMinutes();
                            },
                          ),
                          SizedBox(
                            width: 12,
                          ),
                          Expanded(
                              child: ElevatedButton(
                            child: Text(
                              "SECS",
                              style: GoogleFonts.acme(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                            ),
                            onPressed: () {
                              timeDat.resetAll();
                            },
                          )),
                        ],
                      )),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
