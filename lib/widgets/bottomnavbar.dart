import 'package:flutter/material.dart';

import '../globals.dart';

import '../screens/timer/timer_screen.dart';
import '../screens/information/info_screen.dart';
import '../screens/statistic/statistic_screen.dart';

class CustomBottomNavBar extends StatefulWidget {
  const CustomBottomNavBar({ Key? key }) : super(key: key);

  @override
  _CustomBottomNavBarState createState() => _CustomBottomNavBarState();
}

class _CustomBottomNavBarState extends State<CustomBottomNavBar> {
  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;

    return Container(
      width: screenSize.width,
      height: 50,
      decoration: BoxDecoration(
        color: appColor,
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(30),
          topLeft: Radius.circular(30),
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.3),
            spreadRadius: 5,
            blurRadius: 7,
            offset: Offset(0, 2),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          GestureDetector(
            onTap: () {
              if (ModalRoute.of(context)?.settings.name 
                != TimerScreen.routeName) {
                Navigator.pushNamedAndRemoveUntil(
                  context,
                  TimerScreen.routeName,
                  (r) => false
                );
              }
            },
            child: Padding(
              padding: const EdgeInsets.only(
                right: 50.0,
                left: 60.0,
              ),
              child: Icon(
                Icons.lock_clock,
                color: (ModalRoute.of(context)?.settings.name 
                == TimerScreen.routeName) ? textColor : Colors.grey[600],
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              if (ModalRoute.of(context)?.settings.name 
                != InfoScreen.routeName) {
                Navigator.pushNamedAndRemoveUntil(
                  context,
                  InfoScreen.routeName,
                  (r) => false
                );
              }
            },
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 50.0
              ),
              child: Icon(
                Icons.menu,
                color: (ModalRoute.of(context)?.settings.name 
                == InfoScreen.routeName) ? textColor : Colors.grey[600],
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              if (ModalRoute.of(context)?.settings.name 
                != StatisticScreen.routeName) {
                Navigator.pushNamedAndRemoveUntil(
                  context,
                  StatisticScreen.routeName,
                  (r) => false
                );
              }
            },
            child: Padding(
              padding: const EdgeInsets.only(
                left: 50.0,
                right: 60.0,
              ),
              child: Icon(
                Icons.sentiment_satisfied_outlined,
                color: (ModalRoute.of(context)?.settings.name 
                == StatisticScreen.routeName) ? textColor : Colors.grey[600],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
