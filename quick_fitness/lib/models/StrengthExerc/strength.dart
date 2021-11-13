import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quick_fitness/menuScreen.dart';

class StrengthExerc extends StatefulWidget {
  @override
  _StrengthExercState createState() => _StrengthExercState();
}

class _StrengthExercState extends State<StrengthExerc> {
  int reps = 0;
  int sets = 0;
  Timer? timer2;
  Timer? timer1;
  void startSets(int dura) {
    timer2 = Timer.periodic(Duration(seconds: dura), (timer) {
      setState(() {
        if (sets < 70) {
          sets++;
        } else {
          timer2?.cancel();
        }
      });
    });
  }

  void startReps(int dura) {
    timer1 = Timer.periodic(Duration(seconds: dura), (timer) {
      setState(() {
        if (reps < 10) {
          reps++;
        } else {
          reps = 1;
        }
      });
    });
  }

  @override
  void dispose() {
    timer1?.cancel();
    timer2?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black54,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(32.0),
        child: AppBar(
          backgroundColor: Colors.transparent,
          leading: ElevatedButton(
            child: Icon(
              Icons.arrow_back_ios,
              color: Colors.white,
            ),
            onPressed: () {
              timer1?.cancel();
              timer2?.cancel();

              Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => MenuScrn(),
                  ));
            },
          ),
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          color: Colors.black87,
          image: DecorationImage(
            image: AssetImage('assets/weightscreen.jpg'),
            fit: BoxFit.fitHeight,
          ),
        ),
        child: SingleChildScrollView(
          child: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 892,
                ),
                Center(
                    child: Column(
                  children: [
                    Text(
                      "REPS",
                      style: GoogleFonts.coda(
                          color: Colors.green, fontWeight: FontWeight.bold),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(1.0),
                      child: Card(
                          color: Colors.cyanAccent,
                          child: Container(
                            height: 181,
                            width: 172,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(23),
                              color: Colors.black87,
                            ),
                            child: Center(
                                child: Text(
                              reps.toString(),
                              style: GoogleFonts.roboto(
                                  color: Colors.white,
                                  fontSize: 135,
                                  fontWeight: FontWeight.bold),
                            )),
                          )),
                    ),
                    SizedBox(
                      height: 21,
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          primary: Colors.green, shadowColor: Colors.black),
                      onPressed: () {
                        startReps(3);
                        startSets(30);
                      },
                      child: const Text('START'),
                    ),
                    SizedBox(
                      height: 91,
                    ),
                    Container(
                        color: Colors.black54,
                        child: Text(
                          "REPETITIONS COUNT: " + totalReps().toString(),
                          style: GoogleFonts.roboto(
                              color: Colors.cyanAccent,
                              fontWeight: FontWeight.bold,
                              fontSize: 12),
                        ))
                  ],
                )),
                SizedBox(
                  width: 0.2,
                ),
                Center(
                    child: Column(
                  children: [
                    Text(
                      "SET(S)",
                      style: GoogleFonts.coda(
                          color: Colors.green, fontWeight: FontWeight.bold),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Card(
                        color: Colors.cyanAccent,
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(23),
                            color: Colors.black87,
                          ),
                          child: Center(
                              child: Text(
                            sets.toString(),
                            style: GoogleFonts.roboto(
                                color: Colors.white,
                                fontSize: 135,
                                fontWeight: FontWeight.bold),
                          )),
                          height: 181,
                          width: 172,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 22,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        timer1?.cancel();
                        timer2?.cancel();
                      },
                      child: const Text(' STOP '),
                      style: ElevatedButton.styleFrom(
                          primary: Colors.red, shadowColor: Colors.black),
                    ),
                    SizedBox(
                      height: 87,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: Container(
                          color: Colors.black54,
                          child: Text(
                            "SETS COUNT: " + sets.toString(),
                            style: GoogleFonts.roboto(
                                color: Colors.cyanAccent,
                                fontWeight: FontWeight.bold,
                                fontSize: 12),
                          )),
                    )
                  ],
                )),
              ],
            ),
          ),
        ),
      ),
    );
  }

  int totalReps() {
    return reps * sets;
  }
}
