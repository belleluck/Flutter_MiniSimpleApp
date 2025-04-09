import 'dart:math';
import 'package:flutter/material.dart';

import '../../constants/dashboard_item_data.dart';
import '../../widgets/app_drawer.dart';


class Magic8BallPage extends StatelessWidget {
  const Magic8BallPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: AppDrawer(items: dashboardItems),
      backgroundColor: Colors.blue,
      appBar: AppBar(
        backgroundColor: Colors.blue.shade900,
        title: Text('Ask Me Anything'),
      ),
      body: Ball(),
    );
  }
}


class Ball extends StatefulWidget {
  @override
  BallState createState() => BallState();
}

class BallState extends State<Ball> {
  int ballNumber = 1;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: TextButton(
        onPressed: () {
          setState(() {
            ballNumber = Random().nextInt(5) + 1;
          });
        },
        child: Image.asset('images/ball$ballNumber.png'),
      ),
    );
  }
}