import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: SafeArea(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            CircleAvatar(
              radius: 60.0,
              backgroundColor: Colors.teal,
              backgroundImage: AssetImage('images/prasanta.jpg'),
            ),
            Text(
              '  Prasanta Mallik',
              style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Galada'),
            ),
            Text(
              'Software Developer',
              style: TextStyle(
                fontSize: 16.0,
                color: Colors.teal[100],
                letterSpacing: 2.5,
                fontFamily: 'SourceSansPro',
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 30.0,
              width: 200.0,
              child: Divider(
                color: Colors.greenAccent,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                color: Colors.white70,
                margin: EdgeInsets.symmetric(vertical: 0, horizontal: 10.0),
                child: ListTile(
                  leading: Icon(
                    Icons.phone,
                    color: Colors.teal[900],
                  ),
                  title: Text(
                    '+91 7978499540',
                    style: TextStyle(
                        fontSize: 22.0,
                        fontFamily: 'SourceSansPro',
                        color: Colors.teal[800]),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                margin: EdgeInsets.symmetric(vertical: 0, horizontal: 10.0),
                color: Colors.white70,
                child: ListTile(
                  leading: Icon(
                    Icons.email,
                    color: Colors.teal[900],
                  ),
                  title: Text(
                    'prasantamallik614@gmail.com',
                    style: (TextStyle(
                      fontSize: 16.0,
                      fontFamily: 'SourceSansPro',
                      color: Colors.teal[800],
                    )),
                  ),
                ),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
