import 'package:flutter/material.dart';

void main() {
  runApp(ContainerApp());
}

class ContainerApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: SafeArea(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                margin: EdgeInsets.fromLTRB(0, 30.0, 10.0, 30.0),
                height: 800.0,
                width: 100.0,
                color: Colors.red,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 100.0,
                    width: 100.0,
                    color: Colors.yellowAccent,
                  ),
                  Container(
                    height: 100.0,
                    width: 100.0,
                    color: Colors.green[200],
                  ),
                ],
              ),
              Container(
                margin: EdgeInsets.fromLTRB(10.0, 30.0, 0, 30.0),
                height: 800.0,
                width: 100.0,
                color: Colors.blue,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
