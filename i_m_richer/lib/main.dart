import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.greenAccent,
        appBar: AppBar(
          title: Text('                           I D E A'),
          backgroundColor: Colors.green[900],
        ),
        body: Center(
          child: Image(
            image: AssetImage('images/abstract-749.png'),
          ),
        ),
      ),
    ),
  );
}
