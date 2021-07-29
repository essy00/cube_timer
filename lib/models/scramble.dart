import 'dart:math';
import 'package:flutter/material.dart';

Map penalties = {"0": 0, "+2": 2, "DNF": -1};

class Scramble {
  final int time; // milliseconds
  final List scramble;
  final DateTime date = DateTime.now();
  int? penalty = 0;
  String? comment = "";
  bool isArchived = false;

  Scramble({
    required this.time,
    required this.scramble,
    this.comment,
    this.penalty,
  });
}

var scrambles = ValueNotifier<List<Scramble>>([
    
  ]
);


List<String> threeByThreePossibleMovements = [
  "R", "R'", "R2",
  "L", "L'", "L2",
  "U", "U'", "U2",
  "D", "D'", "D2",
  "F", "F'", "F2",
  "B", "B'", "B2",
];

String getTime(int milliseconds) {
  String res = "";

  int milliSecond = milliseconds % 1000;
  int second = milliseconds ~/ 1000;
  int minute = second ~/ 60;
  int hour = minute ~/ 60;

  second %= 60;
  minute %= 60;
  hour %= 60;

  if (hour > 0)
    res += hour
      .toString()
      .padLeft(2, "0") + ":";

  if (minute > 0)
    res += minute
      .toString()
      .padLeft(2, "0") + ":";

  res += second
    .toString()
    .padLeft(2, "0") + ".";
  res += milliSecond
    .toString()
    .substring(0, milliSecond.toString().length - 1)
    .padLeft(2, '0');

  return res;
}

List<String> getScramble(List scrambleList) {
  List<String> res = [];
  final random = new Random();

  for (int i = 0; i < 25; i++) {
    res.insert(res.length, scrambleList[random.nextInt(scrambleList.length)]);
  }

  return res;
}

final playerPointsToAdd = ValueNotifier<int>(0);

var activeScramble = ValueNotifier<List<String>>(getScramble(threeByThreePossibleMovements));

