import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int soundNumber) {
    final player = AudioPlayer();
    player.play(AssetSource('note$soundNumber.wav'));
  }

  Expanded buildKey({required Color color, required int soundNumber}) {
    return Expanded(
      child: TextButton(
        style: TextButton.styleFrom(
            backgroundColor: color,
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.zero,
            ),
        ),
        onPressed: () {
          playSound(soundNumber);
        },
        child: const SizedBox.shrink(), // Empty container
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buildKey(color: Colors.red, soundNumber: 1),
              buildKey(color: Colors.yellow, soundNumber: 2),
              buildKey(color: Colors.blue, soundNumber: 3),
              buildKey(color: Colors.grey, soundNumber: 4),
              buildKey(color: Colors.green, soundNumber: 5),
              buildKey(color: Colors.blueGrey, soundNumber: 6),
              buildKey(color: Colors.lightGreen, soundNumber: 7),
            ],
          ),
        ),
      ),
    );
  }
}
