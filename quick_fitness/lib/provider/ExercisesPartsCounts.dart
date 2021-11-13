import 'package:flutter/material.dart';

class ExercisesPartsCounts with ChangeNotifier {
  int reps = 0;
  int set = 0;
  int minutes = 1;
  int hours = 1;
  int secs = 1;

  int addReps() {
    reps++;
    notifyListeners();
    return reps;
  }

  int resetAll() {
    hours = 0;
    minutes = 1;
    secs = 1;

    notifyListeners();
    return secs;
  }

  int addHours() {
    hours++;
    return hours;
  }

  int addMinutes() {
    minutes++;
    notifyListeners();
    return minutes;
  }

  int addSecs() {
    secs++;
    notifyListeners();
    return secs;
  }
}
