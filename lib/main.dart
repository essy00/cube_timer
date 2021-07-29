import 'package:flutter/material.dart';

import 'package:cube_timer/screens/timer/timer_screen.dart';
import 'package:cube_timer/screens/information/info_screen.dart';
import 'package:cube_timer/screens/statistic/statistic_screen.dart';

void main() => runApp(MaterialApp(
  debugShowCheckedModeBanner: false,
  initialRoute: TimerScreen.routeName,
  routes: {
    TimerScreen.routeName: (context) => TimerScreen(),
    InfoScreen.routeName: (context) => InfoScreen(),
    StatisticScreen.routeName: (context) => StatisticScreen(),
  },
));