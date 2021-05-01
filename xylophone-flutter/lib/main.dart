import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    void playSound(int playSound) {
      final player = AudioCache();
      player.play('note$playSound.wav');
    }

    Expanded buildKey({int soundNumber, Color color}) {
      return Expanded(
        child: FlatButton(
          color: color,
          onPressed: () {
            playSound(soundNumber);
          },
        ),
      );
    }

    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white70,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              buildKey(color: Colors.purple, soundNumber: 1),
              buildKey(color: Colors.deepPurple, soundNumber: 2),
              buildKey(color: Colors.blue, soundNumber: 3),
              buildKey(color: Colors.green, soundNumber: 4),
              buildKey(color: Colors.yellowAccent[700], soundNumber: 5),
              buildKey(color: Colors.red, soundNumber: 6),
              buildKey(color: Colors.orange, soundNumber: 7),
            ],
          ),
        ),
      ),
    );
  }
}
