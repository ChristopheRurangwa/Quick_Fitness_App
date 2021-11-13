import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:quick_fitness/provider/ExercisesPartsCounts.dart';

import 'homeScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
        create: (cxt) => ExercisesPartsCounts(),
        child: MaterialApp(
          title: '',
          theme: ThemeData(
            primarySwatch: Colors.cyan,
          ),
          home: HomeScreen(),
          debugShowCheckedModeBanner: false,
        ));
  }
}
