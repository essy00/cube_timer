import 'package:flutter/material.dart';

import '../screens/timer/timer_screen.dart';
import '../globals.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  Size get preferredSize => const Size.fromHeight(120);

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;

    bool sandWatch = (ModalRoute.of(context)?.settings.name 
      != TimerScreen.routeName);

    return Padding(
      padding: const EdgeInsets.only(
        right: 12,
        left: 12,
        top: 40,
        bottom: 10,
      ),
      child: Container(
        width: screenSize.width,
        height: 50.0,
        decoration: BoxDecoration(
          color: appColor,
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.3),
              spreadRadius: 5,
              blurRadius: 7,
            ),
          ],
          borderRadius: BorderRadius.all(Radius.circular(15))
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.only(
                left: 15,
              ),
              child: GestureDetector(
                onTap: () {
                  Scaffold.of(context).openDrawer();
                },
                child: Icon(Icons.settings, color: textColor),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 15
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: GestureDetector(
                  onTap: () {},
                  child: Row(
                    children: [
                      Column(
                        children: [
                          Text(
                            "3x3 Cube",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                              color: textColor
                            ),
                          ),
                          SizedBox(height: 1,),
                          Text(
                            "normal",
                            style: TextStyle(
                              fontSize: 10,
                              color: textColor
                            ),
                          )
                        ],
                      ),
                      SizedBox(width: 4,),
                      Icon(Icons.arrow_drop_down, size: 14,)
                    ],
                  )
                ),
              )
            ),
            Row(
              children: [
                if (sandWatch) Padding(
                  padding: const EdgeInsets.only(right: 8.0),
                  child: GestureDetector(
                    onTap: () {},
                    child: Icon(
                      Icons.perm_scan_wifi_rounded,
                      color: textColor
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    right: 15
                  ),
                  child: GestureDetector(
                    onTap: () {},
                    child: Icon(Icons.circle, color: textColor),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}