import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:syncplay/constants.dart';
import 'package:syncplay/components/buttonCoponents.dart';

class WelcomePage extends StatefulWidget {
  static String id = "welcome_screen";
  @override
  _WelcomePageState createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kbackgroundColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'SyncPlay',
              style: TextStyle(fontSize: 50),
              textAlign: TextAlign.center,
            ),
            GestureDetector(
              child: LongButton(
                buttonColor: Color(0XFF0BCAC7),
                buttonText: 'Login',
                onTapAction: (){
                  print("login pressed");
                },
              ),
            ),
            GestureDetector(
              child: LongButton(
                buttonColor: Color(0XFF0BCAC7),
                buttonText: 'Register',
                onTapAction: (){
                  print("regiter pressed");
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
