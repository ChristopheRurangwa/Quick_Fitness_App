import 'package:circular_countdown/circular_countdown.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quick_fitness/models/Flexibility/stretch.dart';
import 'package:quick_fitness/models/cardio/RunningEnviro.dart';
import 'package:quick_fitness/seasonMenu.dart';
import 'package:quick_fitness/widgets/stopWatch.dart';

import 'models/StrengthExerc/strength.dart';

class MenuScrn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.cyanAccent,
      body: Center(
        child: Container(
          height: 500,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/home.png'),
              fit: BoxFit.cover,
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: 10,
              ),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                        decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        height: 100,
                        width: 115,
                        child: Card(
                          color: Colors.white,
                          child: Ink.image(
                            image: AssetImage("lib/icons/weight2.png"),
                            fit: BoxFit.contain,
                            child: InkWell(onTap: () {
                              Navigator.pop(context, true);
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => StrengthExerc(),
                                  ));
                            }),
                          ),
                        )),
                    Text(
                      "STRENGTH",
                      style: GoogleFonts.aleo(
                          color: Colors.white,
                          fontWeight: FontWeight.w800,
                          fontSize: 15),
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Expanded(
                  child: Column(
                //  mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                      decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      height: 100,
                      width: 115,
                      child: Card(
                        color: Colors.white,
                        child: Ink.image(
                          image: AssetImage("lib/icons/flexible.png"),
                          fit: BoxFit.contain,
                          child: InkWell(onTap: () {
                            Navigator.pop(context, true);
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => Stretch(),
                                ));
                          }),
                        ),
                      )),
                  Text(
                    "STRETCHING",
                    style: GoogleFonts.aleo(
                        color: Colors.white,
                        fontWeight: FontWeight.w800,
                        fontSize: 13),
                  ),
                ],
              )),
              Expanded(
                  child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                      decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      height: 100,
                      width: 115,
                      child: Card(
                        color: Colors.white,
                        child: Ink.image(
                          image: AssetImage("lib/icons/time2.png"),
                          fit: BoxFit.contain,
                          child: InkWell(onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) =>
                                      StopWatch(15, CountdownUnit.second),
                                ));
                          }),
                        ),
                      )),
                  Text(
                    "TIMER",
                    style: GoogleFonts.aleo(
                        color: Colors.white,
                        fontWeight: FontWeight.w800,
                        fontSize: 18),
                  ),
                ],
              )),
              SizedBox(
                width: 10,
              ),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.pinkAccent,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      height: 100,
                      width: 115,
                      child: Card(
                        color: Colors.white,
                        child: Ink.image(
                          image: AssetImage("lib/icons/run2.png"),
                          fit: BoxFit.contain,
                          child: InkWell(onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => SeasonMenu(),
                                ));
                          }),
                        ),
                      ),
                    ),
                    Text(
                      "CARDIO",
                      style: GoogleFonts.aleo(
                        color: Colors.white,
                        fontWeight: FontWeight.w800,
                        fontSize: 20,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: 10,
              )
            ],
          ),
        ),
      ),
    );
  }
}
