import 'package:flutter/material.dart';

import 'package:cube_timer/globals.dart';

import 'package:cube_timer/widgets/appbar.dart';
import 'package:cube_timer/widgets/bottomnavbar.dart';
import 'package:cube_timer/widgets/drawer.dart';

import 'components/body.dart';

class StatisticScreen extends StatelessWidget {
  const StatisticScreen({ Key? key }) : super(key: key);

  static const String routeName = "/statistic";

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