import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black87,
        appBar: AppBar(
          title: Text('                       I  AM  RICH'),
          backgroundColor: Colors.black12,
        ),
        body: Center(
          child: Image(image: AssetImage('images/diamond.png')),
        ),
      ),
    ),
  );
}
