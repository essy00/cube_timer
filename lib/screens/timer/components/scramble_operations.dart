import 'package:cube_timer/globals.dart';
import 'package:flutter/material.dart';

import '../../../models/scramble.dart';


class ScrambleOperations extends StatefulWidget {
  const ScrambleOperations({ Key? key }) : super(key: key);

  @override
  _ScrambleOperationsState createState() => _ScrambleOperationsState();
}


class _ScrambleOperationsState extends State<ScrambleOperations> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 15,
            vertical: 10,
          ),
          child: Column(
            children: [
              ValueListenableBuilder<List>(
                valueListenable: activeScramble,
                builder: (context, value, widget) {
                  return Text(
                    value.join(" "),
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                      color: textColor
                    ),
                  );
                }
              ),
              SizedBox(height: 5,),
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    smallButton(
                      () {},
                      Icons.lightbulb_outlined,
                    ),
                    Row(
                      children: [
                        smallButton(
                          () {},
                          Icons.edit_outlined,
                        ),
                        SizedBox(width: 10),
                        smallButton(
                          () {
                            activeScramble.value = getScramble(
                              threeByThreePossibleMovements
                            );
                            setState(() {});
                          },
                          Icons.refresh,
                        ),
                      ],
                    )
                  ],
                ),
              )
            ],
          )
        )
      ],
    );
  }

  GestureDetector smallButton(VoidCallback press, IconData icon) {
    return GestureDetector(
      onTap: press,
      child: Icon(icon, color: textColor),
    );
  }
}
