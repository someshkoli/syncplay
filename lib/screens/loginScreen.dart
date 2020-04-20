import 'package:flutter/material.dart';
import 'package:syncplay/components/buttonCoponents.dart';
import 'package:syncplay/constants.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:syncplay/screens/dashboardScreen.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class LoginScreen extends StatefulWidget {
  static String id = 'login_screen';
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  String email;
  String password;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kbackgroundColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Login',
              style: TextStyle(
                fontSize: 50,
                color: Color(0xDD6A7C94)
              ),
            ),
            SizedBox(height: 30,),
            Container(
              width: 300,
              child: TextField(
                onChanged: (value) {
                  email = value;
                },
                textAlign: TextAlign.center,
                decoration: InputDecoration(
                  hintText: 'Enter your email',
                  contentPadding:
                      EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(32.0)),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: klongButtonColor, width: 1.0),
                    borderRadius: BorderRadius.all(Radius.circular(32.0)),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: klongButtonColor, width: 2.0),
                    borderRadius: BorderRadius.all(Radius.circular(32.0)),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              width: 300,
              child: TextField(
                onChanged: (value) {
                  password = value;
                },
                textAlign: TextAlign.center,
                decoration: InputDecoration(
                  hintText: 'Enter your password',
                  contentPadding:
                      EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(32.0)),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: klongButtonColor, width: 1.0),
                    borderRadius: BorderRadius.all(Radius.circular(32.0)),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: klongButtonColor, width: 2.0),
                    borderRadius: BorderRadius.all(Radius.circular(32.0)),
                  ),
                ),
              ),
            ),
            LongButton(
              buttonColor: klongButtonColor,
              buttonText: 'Login',
              onTapAction: () async {
                print(email);
                print(password);
                FirebaseUser user = (await _auth.signInWithEmailAndPassword(
                        email: email, password: password))
                    .user;
                print(user.email);
                if (user != null) {
                  Navigator.pushNamed(context, DashboardScreen.id);
                }
              },
            ),
            Hero(
              tag: 'syncplayIcon',
              child: Icon(
                FontAwesomeIcons.headphones,
                size: 40,
                color: Color(0xFF6A7C94),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
