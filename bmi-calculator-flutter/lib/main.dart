import 'package:flutter/material.dart';
import 'screens/input_page.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        primaryColor: Colors.tealAccent,
        scaffoldBackgroundColor: Colors.black87,
      ),
      home: InputPage(),
    );
  }
}
//0xFF0A0D21
//0xFF0A0D21
