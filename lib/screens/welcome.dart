import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:syncplay/constants.dart';
import 'package:syncplay/components/buttonCoponents.dart';
import 'package:syncplay/screens/loginScreen.dart';
import 'package:syncplay/screens/registerScreen.dart';
import 'package:syncplay/screens/dashboardScreen.dart';
import 'package:firebase_auth/firebase_auth.dart';

class WelcomePage extends StatefulWidget {
  static String id = "welcome_screen";
  @override
  _WelcomePageState createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  final _auth = FirebaseAuth.instance;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kbackgroundColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Hero(
              tag: 'syncplayIcon',
              child: Icon(
                FontAwesomeIcons.headphones,
                size: 150,
                color: Color(0xFF6A7C94),
              ),
            ),
            // SizedBox(height: 2,),
            Text(
              'SyncPlay',
              style: TextStyle(fontSize: 50, color: Color(0xFFF8F8FA)),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 10,
            ),
            GestureDetector(
              child: LongButton(
                buttonColor: Color(0XFF0BCAC7),
                buttonText: 'Login',
                onTapAction: () {
                  Navigator.pushNamed(context, LoginScreen.id,);
                },
              ),
            ),
            GestureDetector(
              child: LongButton(
                buttonColor: Color(0XFF0BCAC7),
                buttonText: 'Register',
                onTapAction: () {
                  Navigator.pushNamed(context, RegisterScreen.id);
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
