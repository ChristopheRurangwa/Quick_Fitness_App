import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'menuScreen.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.cyanAccent,
        body: Center(
          child: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/home.png'),
                fit: BoxFit.contain,
              ),
            ),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("QUICK FITNESS",
                      style: GoogleFonts.acme(
                          fontSize: 30,
                          color: Colors.white,
                          fontWeight: FontWeight.bold)),
                  SizedBox(
                    height: 350,
                  ),
                  Center(
                      child: Transform(
                    transform: Matrix4.identity(),
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius:
                              BorderRadius.circular(30), // radius of 10
                          color: Colors.black12 // green as background color
                          ),
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              primary: Colors.green, shadowColor: Colors.black),
                          onPressed: () {
                            Navigator.push(
                                context,
                                PageRouteBuilder(
                                  pageBuilder: (a, b, c) => MenuScrn(),
                                  transitionsBuilder: (a, anim, c, child) =>
                                      FadeTransition(
                                    opacity: anim,
                                    child: child,
                                  ),
                                  transitionDuration:
                                      Duration(milliseconds: 2522),
                                ));
                          },
                          child: Text(
                            "Continue",
                            style: GoogleFonts.aleo(
                                fontSize: 23,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          )),
                    ),
                  )),
                ],
              ),
            ),
          ),
        ));
  }
}
