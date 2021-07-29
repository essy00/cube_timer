import 'package:flutter/material.dart';

class CustomDrawer extends StatefulWidget {
  @override
  _CustomDrawerState createState() => _CustomDrawerState();
}

class _CustomDrawerState extends State<CustomDrawer> {
  @override
  Widget build(BuildContext context) {
    return Theme(
      data: Theme.of(context).copyWith(
        canvasColor: Colors.white
      ),
      child: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            SizedBox(
              height: 150,
              child: DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.grey,
                ),
                child: Align(
                  alignment: Alignment.bottomRight,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Icon(
                      Icons.chat_bubble
                    ),
                  )
                ),
              ),
            ),

            ListTile(
              title: drawerItem(Icons.timer, "Timer"),
              onTap: () {
                
              },
            ),

            Theme(
              data: ThemeData(
                unselectedWidgetColor: Colors.grey[700],
                accentColor: Colors.grey[700]
              ),
              child: ExpansionTile(
                title: drawerItem(Icons.compass_calibration, "Trainer"),
                children: [
                  ListTile(
                    onTap: () {},
                    title: Row(
                      children: [
                        SizedBox(width: 15),
                        drawerItem(Icons.ac_unit, "\tOLL")
                      ],
                    )
                  ),
                  ListTile(
                    onTap: () {},
                    title: Row(
                      children: [
                        SizedBox(width: 15),
                        drawerItem(Icons.ac_unit, "\tPLL")
                      ],
                    )
                  )
                ]
              ),
            ),

            Theme(
              data: ThemeData(
                unselectedWidgetColor: Colors.grey[700],
                accentColor: Colors.grey[700]
              ),
              child: ExpansionTile(
                title: drawerItem(Icons.document_scanner, "Algorithms"),
                children: [
                  ListTile(
                    onTap: () {},
                    title: Row(
                      children: [
                        SizedBox(width: 15),
                        drawerItem(Icons.ac_unit, "\tOLL")
                      ],
                    )
                  ),
                  ListTile(
                    onTap: () {},
                    title: Row(
                      children: [
                        SizedBox(width: 15),
                        drawerItem(Icons.ac_unit, "\tPLL")
                      ],
                    )
                  )
                ]
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(
                top: 6.0,
                bottom: 18.0,
              ),
              child: Container(
                color: Colors.grey[600],
                height: 0.8,
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(
                left: 16.0,
                bottom: 8.0
              ),
              child: Text(
                "Other",
                style: TextStyle(color: Colors.grey[700]),
              ),
            ),

            ListTile(
              onTap: () {},
              title: drawerItem(Icons.folder, "Export/Import")
            ),

            ListTile(
              onTap: () {},
              title: drawerItem(Icons.palette, "App theme")
            ),

            ListTile(
              onTap: () {},
              title: drawerItem(Icons.line_style, "Color scheme")
            ),

            Padding(
              padding: const EdgeInsets.symmetric(vertical: 6.0),
              child: Container(
                color: Colors.grey[700],
                height: 0.8,
              ),
            ),

            ListTile(
              onTap: () {},
              title: drawerItem(Icons.settings, "Settings")
            ),

            ListTile(
              onTap: () {},
              title: drawerItem(Icons.favorite, "Donate")
            ),

            ListTile(
              onTap: () {},
              title: drawerItem(Icons.question_answer, "About and feedback")
            ),
          ],
        ),
      ),
    );
  }

  Row drawerItem(IconData icon, String text) {
    return Row(
      children: [
        Icon(
          icon,
          color: Colors.grey[700],
        ),
        SizedBox(width: 15),
        Text(text, style: TextStyle(color: Colors.black))
      ]
    );
  }
}
