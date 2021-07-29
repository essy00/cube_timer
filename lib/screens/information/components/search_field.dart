import 'package:flutter/material.dart';

class SearchField extends StatelessWidget {
  const SearchField({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController searchController = new TextEditingController();

    return Padding(
      padding: const EdgeInsets.only(
        top: 8.0,
        bottom: 16.0,
        right: 12.0,
        left: 12.0,
      ),
      child: Container(
        height: 35,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(15)),
          boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.3),
                spreadRadius: 5,
                blurRadius: 7,
              ),
            ],
        ),
        child: Row(
          children: [
            SizedBox(width: 10,),
            smallButton(() {}, Icons.alarm),
            SizedBox(width: 4,),
            Container(
              color: Colors.grey[700]!.withOpacity(0.8),
              width: 1,
            ),
            Flexible(
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16.0,
                  vertical: 4.0
                ),
                child: TextFormField(
                  controller: searchController,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 14,
                    height: 0.85
                  ),
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: "Search comments",
                    hintStyle: TextStyle(
                      color: Colors.grey[600],
                    ),
                  ),
                ),
              ),
            ),
            smallButton(() {}, Icons.archive),
            smallButton(() {}, Icons.menu),
            SizedBox(width: 10,)
          ],
        )
      ),
    );
  }

  Padding smallButton(VoidCallback press, IconData icon) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 8.0,
        vertical: 8.0,
      ),
      child: GestureDetector(
        onTap: press,
        child: Icon(
          icon,
          color: Colors.black,
          size: 20
        )
      ),
    );
  }
}