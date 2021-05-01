import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          toolbarHeight: 40.0,
          centerTitle: true,
          title: Text(
            'Dice Game',
            style: TextStyle(
              fontSize: 20.0,
            ),
          ),
          backgroundColor: Colors.red[600],
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftButtonPressed = 1;
  int rightButtonPressed = 1;
  void changeDiceFace() {
    leftButtonPressed = Random().nextInt(6) + 1;
    rightButtonPressed = Random().nextInt(6) + 1;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Center(
        child: Row(
          children: <Widget>[
            Expanded(
              child: FlatButton(
                  onPressed: () {
                    setState(() {
                      changeDiceFace();
                    });
                  },
                  child: Image.asset('images/dice$leftButtonPressed.png')),
            ),
            Expanded(
              child: FlatButton(
                  onPressed: () {
                    setState(() {
                      changeDiceFace();
                    });
                  },
                  child: Image.asset('images/dice$rightButtonPressed.png')),
            ),
          ],
        ),
      ),
    );
  }
}
