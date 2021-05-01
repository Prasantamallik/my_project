import 'package:firebase_core/firebase_core.dart';
import 'package:flash_chat/screens/login_screen.dart';
import 'package:flash_chat/screens/registration_screen.dart';
import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flash_chat/components/rounded_buton.dart';
// import 'package:firebase_auth/firebase_auth.dart';

class WelcomeScreen extends StatefulWidget {
  static const String id = 'welcomeScreen';
  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen>
    with SingleTickerProviderStateMixin {
  AnimationController controller;
  Animation animation;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Firebase.initializeApp().whenComplete(() => () {
          print('completed');
          setState(() {});
        });
    controller = AnimationController(
      duration: Duration(seconds: 1),
      vsync: this,
    );

    animation = ColorTween(begin: Colors.blueGrey, end: Colors.white)
        .animate(controller);

//    controller.reverse(from: 1.0);
    controller.forward();

    controller.addListener(() {
      setState(() {
        print(animation.value);
      });
    });
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: animation.value,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Row(
              children: <Widget>[
                Hero(
                  tag: 'logo',
                  child: Container(
                    child: Image.asset('images/logo.png'),
                    height: 50.0,
                  ),
                ),
                TypewriterAnimatedTextKit(
                  text: ['Flash Chat'],
                  textStyle: TextStyle(
                    fontSize: 45.0,
                    fontWeight: FontWeight.w900,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 48.0,
            ),

            RoundedButton(
              color: Colors.lightBlueAccent,
              buttonTitle: 'LOG IN',
              onPressed: () {
                Navigator.pushNamed(context, LoginScreen.logscr);
              },
            ),
            RoundedButton(
              color: Colors.lightBlue,
              buttonTitle: 'Register here',
              onPressed: () {
                Navigator.pushNamed(context, RegistrationScreen.regdscr);
              },
            ),
//            Padding(
//              padding: EdgeInsets.symmetric(vertical: 16.0),
//              child: Material(
//                color: Colors.blueAccent,
//                borderRadius: BorderRadius.circular(30.0),
//                elevation: 5.0,
//                child: MaterialButton(
//                  onPressed: () {
//                    //Go to registration screen.
//                    Navigator.pushNamed(context, RegistrationScreen.regdscr);
//                  },
//                  minWidth: 200.0,
//                  height: 42.0,
//                  child: Text(
//                    'Register',
//                  ),
//                ),
//              ),
//            ),
          ],
        ),
      ),
    );
  }
}
