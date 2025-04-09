import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

import '../../constants/dashboard_item_data.dart';
import '../../widgets/app_drawer.dart';


class XylophonePage extends StatelessWidget {
  const XylophonePage({super.key});

  @override
  Widget build(BuildContext context) {

    Future<void> playSound(int soundNumber) async {
      final player = AudioPlayer();
      await player.play(AssetSource('note$soundNumber.wav'));
    }

    Expanded buildKey({required Color color, required int soundNumber}) {
      return Expanded(
        child: TextButton(
          style: TextButton.styleFrom(
            backgroundColor: color, // text color
          ),
          onPressed: () {
            playSound(soundNumber);
          },
          child: const SizedBox(),
        ),
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: Text('Xylophone'),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      drawer: AppDrawer(items: dashboardItems),
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            buildKey(color: Colors.red, soundNumber: 1),
            buildKey(color: Colors.orange, soundNumber: 2),
            buildKey(color: Colors.yellow, soundNumber: 3),
            buildKey(color: Colors.green, soundNumber: 4),
            buildKey(color: Colors.teal, soundNumber: 5),
            buildKey(color: Colors.blue, soundNumber: 6),
            buildKey(color: Colors.purple, soundNumber: 7),
          ],
        ),
      ),
    );
  }
}