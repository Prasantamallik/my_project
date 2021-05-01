import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
        backgroundColor: Colors.white,
        appBar: PreferredSize(
            preferredSize: Size.fromHeight(140),
            child: AppBar(
                title: Text(
                  "YUMMYTO",
                  style: TextStyle(
                      color: Colors.white54,
                      fontSize: 30,
                      fontWeight: FontWeight.bold),
                ),
                backgroundColor: Color(0xffcCC202E),
                centerTitle: true,
                elevation: 50,
                brightness: Brightness.light,
                shadowColor: Colors.green[200],
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(1400),
                      bottomRight: Radius.circular(600)),
                  side: BorderSide(
                    width: 1,
                    color: Colors.pink[100],
                    style: BorderStyle.solid,
                  ),
                ),
                leading: Icon(Icons.arrow_back_ios_sharp),
                actions: [Icon(Icons.search)]
                // flexibleSpace: Container(
                //   decoration: BoxDecoration(
                //     gradient: LinearGradient(
                //       colors: [
                //         Colors.deepPurple,
                //         Colors.indigo,
                //         Colors.indigoAccent,
                //         // Color(0xffcCC202E)
                // ],
                // ),
                // ),
                // ),

                )),
        body: Center(
            child: ElevatedButton(
          onPressed: () {
            print("pressed");
          },
          child: Container(
            decoration: BoxDecoration(
               borderRadius: ro,
                color: Colors.white,
                image: new DecorationImage(
                  image: AssetImage('images/crop.jpeg'),
                  fit: BoxFit.fill,
                )),

            // style: ElevatedButton.styleFrom(primary: Colors.blue[300]),        ),
          ),
        )))));
