import 'package:flutter/material.dart';

import 'package:stop_watch_timer/stop_watch_timer.dart';

import '../../../models/scramble.dart';
import '../../../globals.dart';

class TimerText extends StatefulWidget {
  const TimerText({
    Key? key,
  }) : super(key: key);

  @override
  _TimerTextState createState() => _TimerTextState();
}

class _TimerTextState extends State<TimerText> {
  final StopWatchTimer stopWatchTimer = StopWatchTimer(
    mode: StopWatchMode.countUp,
  );
  
  String timeStr = "0.00";
  bool isSolving = false, isSolved = false;

  @override
  void initState() {
    super.initState();

    stopWatchTimer.rawTime.listen((value) {
      timeStr = getTime(value);
      setState(() {});
    });
  }

  @override
  void dispose() async {
    super.dispose();
    await stopWatchTimer.dispose();
  }


  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          GestureDetector(
            onTap: () {
              if (stopWatchTimer.isRunning && isSolving) {
                int oldTime = stopWatchTimer.rawTime.value;

                scrambles.value.insert(
                  0,
                  Scramble(
                    time: oldTime,
                    scramble: activeScramble.value
                  )
                );

                activeScramble.value = getScramble(
                  threeByThreePossibleMovements
                );

                isSolving = false;
                isSolved = true;
                stopWatchTimer.onExecute.add(StopWatchExecute.stop);
                setState(() {});
              }
            },
            onLongPress: () {
              if (!stopWatchTimer.isRunning && !isSolving) {
                stopWatchTimer.onExecute.add(StopWatchExecute.reset);
                isSolved = false;
                isSolving = true;
                setState(() {});
              }
            },
            onLongPressEnd: (_) {
              if (!stopWatchTimer.isRunning) {
                stopWatchTimer.onExecute.add(StopWatchExecute.reset);
                stopWatchTimer.onExecute.add(StopWatchExecute.start);
              }
            },
            child: AnimatedDefaultTextStyle(
              duration: Duration(milliseconds: 200),
              style: TextStyle(
                color: !isSolving ? textColor : Colors.red,
                fontSize: 55,
                fontWeight: FontWeight.bold,
              ),
              child: Text(timeStr),
            ),
          ),
          SizedBox(height: isSolved ? 0 : 20,),
          if (isSolved) Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              smallButton(Icons.delete, () {}),
              smallButton(Icons.block, () {}),
              smallButton(Icons.flag, () {}),
              smallButton(Icons.comment, () {}),
            ],
          ),
        ],
      )
    );
  }

  Padding smallButton(IconData icon, VoidCallback press) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 8.0
      ),
      child: GestureDetector(
        onTap: press,
        child: Icon(
          icon,
          size: 20,
          color: textColor
        ),
      ),
    );
  }
}
