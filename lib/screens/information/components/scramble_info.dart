import 'package:flutter/material.dart';

import '../../../models/scramble.dart';

class ScrambleInfo extends StatefulWidget {
  final Scramble scramble;
  
  const ScrambleInfo({
    Key? key,
    required this.scramble
  }) : super(key: key);

  @override
  _ScrambleInfoState createState() => _ScrambleInfoState();
}

class _ScrambleInfoState extends State<ScrambleInfo> {
  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;

    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 4.0
      ),
      child: GestureDetector(
        onTap: () {
          showDialog(
            context: context,
            builder: (BuildContext context) {
              return infoDialog(screenSize);
            }
          );
        },
        child: Container(
          width: (screenSize.width - 40) / 3,
          height: 60,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(10.0)),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  top: 6.0,
                  left: 8.0,
                  right: 1.0,
                  bottom: 2.0,
                ),
                child: Text(
                  "${
                    widget.scramble.date.day.toString().padLeft(2, "0")
                    }/${
                      widget.scramble.date.month.toString().padLeft(2, "0")
                    }",
                  style: TextStyle(
                    fontSize: 11,
                  ),
                ),
              ),
              Align(
                alignment: Alignment.center,
                child: Text(
                  getTime(widget.scramble.time),
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Dialog infoDialog(Size screenSize) {
    return Dialog(
      insetPadding: EdgeInsets.all(10.0),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(12.0))
      ),
      child: Container(
        width: screenSize.width,
        height: 175,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(12.5)),
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    getTime(widget.scramble.time),
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0,
                      color: Colors.black
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 4.0,
                      vertical: 8.0
                    ),
                    child: Row(
                      children: [
                        Icon(
                          Icons.calendar_today, 
                          size: 20.0,
                          color: Colors.black
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8.0),
                          child: RichText(
                            text: TextSpan(
                              style: TextStyle(
                                color: Colors.black
                              ),
                              children: [
                                WidgetSpan(
                                  child: Text(
                                    "${
                                      widget.scramble.date.day
                                    }/${
                                      widget.scramble.date.month
                                    }/${
                                      widget.scramble.date.year
                                    }",
                                    style: TextStyle(
                                      color: Colors.black
                                    ),
                                  )
                                ),
                                TextSpan(text: "\n"),
                                WidgetSpan(
                                  child: Text(
                                    "${
                                      widget.scramble.date.hour.toString().padLeft(2, "0")
                                    }:${
                                      widget.scramble.date.minute.toString().padLeft(2, "0")
                                    }",
                                    style: TextStyle(
                                      color: Colors.black
                                    ),
                                  )
                                ),
                              ]
                            ),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            
            Container(
              color: Colors.grey[700]!.withOpacity(0.8),
              width: screenSize.width,
              height: 1,
            ),
            
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 18.0,
                vertical: 28.0
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                      right: 14.0,
                    ),
                    child: Icon(Icons.book, color: Colors.black),
                  ),
                  Container(
                    width: screenSize.width - 135,
                    height: 30,
                    child: Text(
                      widget.scramble.scramble.join(" "),
                      style: TextStyle(
                        color: Colors.black
                      ),
                    ),
                  ),
                  SizedBox(width: 2,),
                  Icon(Icons.arrow_drop_down, color: Colors.black)
                ],
              ),
            ),
            
            Container(
              color: Colors.grey[700]!.withOpacity(0.8),
              width: screenSize.width,
              height: 1,
            ),

            Padding(
              padding: const EdgeInsets.only(top: 2.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 21.0,
                      right: 8.0,
                      top: 8.0,
                      bottom: 8.0,
                    ),
                    child: GestureDetector(
                      onTap: () {},
                      child: Icon(
                        Icons.more,
                        size: 20,
                        color: Colors.black
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      right: 21.0,
                      left: 8.0,
                      top: 8.0,
                      bottom: 8.0,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8.0),
                          child: GestureDetector(
                            onTap: () {},
                            child: Icon(
                              Icons.comment_outlined,
                              size: 20,
                              color: Colors.black
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8.0),
                          child: GestureDetector(
                            onTap: () {},
                            child: Icon(
                              Icons.flag,
                              size: 20,
                              color: Colors.black
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
