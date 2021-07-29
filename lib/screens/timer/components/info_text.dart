import 'package:flutter/material.dart';

import '../../../globals.dart';

class InfoText extends StatelessWidget {
  const InfoText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextStyle textStyle = TextStyle(
      fontSize: 14,
      color: textColor
    );    

    return Padding(
      padding: const EdgeInsets.only(
        left: 16.0,
        right: 16.0,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Deviation: 5.02",
                style: textStyle,
              ),
              Text(
                "Mean: 21.24",
                style: textStyle,
              ),
              Text(
                "Best: 10.15",
                style: textStyle,
              ),
              Text(
                "Count: 5.208",
                style: textStyle,
              ),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                "Ao5: 15.39",
                style: textStyle,
              ),
              Text(
                "Ao12: 15.14",
                style: textStyle,
              ),
              Text(
                "Ao50: 15.48",
                style: textStyle,
              ),
              Text(
                "Ao100: 15.53",
                style: textStyle,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
