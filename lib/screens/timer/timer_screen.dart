import 'package:flutter/material.dart';

import '../../globals.dart';

import '../../widgets/appbar.dart';
import '../../widgets/bottomnavbar.dart';
import '../../widgets/drawer.dart';

import 'components/body.dart';

class TimerScreen extends StatelessWidget {
  const TimerScreen({ Key? key }) : super(key: key);

  static const String routeName = "/timer";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appColor,
      appBar: CustomAppBar(),
      body: Body(),
      drawer: CustomDrawer(),
      bottomNavigationBar: CustomBottomNavBar(),
    );
  }
}