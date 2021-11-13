import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'menuScreen.dart';
import 'models/cardio/RunningEnviro.dart';

class SeasonMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(32.0),
          child: AppBar(
            elevation: 42,
            backgroundColor: Colors.white,
            leading: IconButton(
              icon: Icon(Icons.arrow_back),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => MenuScrn()));
              },
            ),
          ),
        ),
        body: ListView(
          children: [
            SizedBox(
              height: 22,
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            RunningEnviro("assets/video/s_run.mp4", "SUMMER")));
              },
              child: Card(
                color: Colors.green,
                elevation: 29,
                child: Container(
                  height: 222,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0),
                    image: DecorationImage(
                      image: AssetImage('assets/summerRun.jpg'),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: Center(
                      child: Text(
                    'SUMMER',
                    style:
                        GoogleFonts.anaheim(fontSize: 52, color: Colors.white),
                  )),
                ),
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            RunningEnviro("assets/video/track.mp4", "TRACK")));
              },
              child: Card(
                color: Colors.blue,
                elevation: 29,
                child: Container(
                  height: 222,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0),
                    image: DecorationImage(
                      image: AssetImage('assets/pex.jpg'),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: Center(
                      child: Text(
                    'TRACK',
                    style:
                        GoogleFonts.anaheim(fontSize: 52, color: Colors.white),
                  )),
                ),
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            RunningEnviro("assets/video/SNOWY.mp4", "WINTER")));
              },
              child: Card(
                color: Colors.greenAccent,
                elevation: 29,
                child: Container(
                  height: 222,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0),
                    image: DecorationImage(
                      image: AssetImage('assets/snow.jpg'),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: Center(
                      child: Text(
                    'WINTER',
                    style:
                        GoogleFonts.anaheim(fontSize: 52, color: Colors.white),
                  )),
                ),
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            RunningEnviro("assets/video/rainy.mp4", "RAINY")));
              },
              child: Card(
                color: Colors.green,
                elevation: 29,
                child: Container(
                  height: 222,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0),
                    image: DecorationImage(
                      image: AssetImage('assets/Rain.jpg'),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: Center(
                      child: Text(
                    'RAINY',
                    style:
                        GoogleFonts.anaheim(fontSize: 52, color: Colors.white),
                  )),
                ),
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            RunningEnviro("assets/video/WQI.mp4", "FALL")));
              },
              child: Card(
                color: Colors.green,
                elevation: 29,
                child: Container(
                  height: 222,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0),
                    image: DecorationImage(
                      image: AssetImage('assets/FALL.jpg'),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: Center(
                      child: Text(
                    'FALL',
                    style:
                        GoogleFonts.anaheim(fontSize: 52, color: Colors.white),
                  )),
                ),
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => RunningEnviro(
                            "assets/video/desert.mp4", "DESERT")));
              },
              child: Card(
                color: Colors.brown,
                elevation: 29,
                child: Container(
                  height: 222,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0),
                    image: DecorationImage(
                      image: AssetImage('assets/desert.jpg'),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: Center(
                      child: Text(
                    'DESERT',
                    style:
                        GoogleFonts.anaheim(fontSize: 52, color: Colors.white),
                  )),
                ),
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => RunningEnviro(
                            "assets/video/MOUNT.mp4", "MOUNTAINS")));
              },
              child: Card(
                color: Colors.yellow,
                elevation: 29,
                child: Container(
                  height: 222,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0),
                    image: DecorationImage(
                      image: AssetImage('assets/mountain.jpg'),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: Center(
                      child: Text(
                    'MOUNTAIN',
                    style:
                        GoogleFonts.anaheim(fontSize: 52, color: Colors.white),
                  )),
                ),
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => RunningEnviro(
                            "assets/video/STAIRS.mp4", "STAIRS")));
              },
              child: Card(
                color: Colors.purple,
                elevation: 29,
                child: Container(
                  height: 222,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0),
                    image: DecorationImage(
                      image: AssetImage('assets/STAIRS.jpg'),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: Center(
                      child: Text(
                    'STAIRS',
                    style:
                        GoogleFonts.anaheim(fontSize: 52, color: Colors.white),
                  )),
                ),
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            RunningEnviro("assets/video/vids21.mp4", "BEACH")));
              },
              child: Card(
                color: Colors.yellowAccent,
                elevation: 29,
                child: Container(
                  height: 222,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0),
                    image: DecorationImage(
                      image: AssetImage('assets/BEACH.jpg'),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: Center(
                      child: Text(
                    'BEACH',
                    style:
                        GoogleFonts.anaheim(fontSize: 52, color: Colors.white),
                  )),
                ),
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            RunningEnviro("assets/video/Mars1.mp4", "MARS")));
              },
              child: Card(
                color: Colors.black12,
                elevation: 29,
                child: Container(
                  height: 222,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0),
                    image: DecorationImage(
                      image: AssetImage('assets/COSMOS.jpg'),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: Center(
                      child: Text(
                    'MARS',
                    style:
                        GoogleFonts.anaheim(fontSize: 52, color: Colors.white),
                  )),
                ),
              ),
            ),
          ],
        ));
  }
}
