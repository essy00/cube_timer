import 'package:flutter/material.dart';

import 'scramble_operations.dart';
import 'timer_text.dart';
import 'info_text.dart';

class Body extends StatefulWidget {
  const Body({ Key? key }) : super(key: key);

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ScrambleOperations(),
        Spacer(),
        TimerText(),
        Spacer(),
        InfoText(),
        SizedBox(height: 10),
      ],
    );
  }
}
