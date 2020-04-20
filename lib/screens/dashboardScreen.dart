import 'package:flutter/material.dart';
import 'package:syncplay/constants.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:syncplay/screens/welcome.dart';
class DashboardScreen extends StatefulWidget {
  static String id = "dashboard_screen";
  @override
  _DashboardScreenState createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  final _auth = FirebaseAuth.instance;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: kbackgroundColor,
      child: Center(
        child: FlatButton(
          child: Text('signout'),
          onPressed: () async {
            FirebaseUser user = await _auth.currentUser();
            print(user);
            await _auth.signOut();
            Navigator.pushNamed(context, WelcomePage.id);
          },
        ),
      ),
    );
  }
}
