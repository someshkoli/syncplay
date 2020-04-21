import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:syncplay/constants.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:syncplay/screens/welcome.dart';
import 'package:syncplay/components/recentCard.dart';
import 'package:syncplay/components/recentCardScroll.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class DashboardScreen extends StatefulWidget {
  static String id = "dashboard_screen";
  @override
  _DashboardScreenState createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  final _auth = FirebaseAuth.instance;
  static String songName = 'New Divide';
  static String duration = '4:40';
  static String artistName = 'Linkin Park';
  List recentSongsList = <Widget>[
    RecentCardWidget(
      songName: songName,
      artistName: artistName,
      duration: duration,
    ),
    RecentCardWidget(
      songName: songName,
      artistName: artistName,
      duration: duration,
    ),
    RecentCardWidget(
      songName: songName,
      artistName: artistName,
      duration: duration,
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kbackgroundColor,
      body: Padding(
        padding: EdgeInsets.only(top: 45),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Icon(
                  Icons.home,
                  size: 30,
                  color: koffWhite,
                ),
                Icon(
                  Icons.people,
                  size: 30,
                  color: koffWhite,
                ),
                Icon(
                  Icons.search,
                  size: 30,
                  color: koffWhite,
                ),
                Icon(Icons.settings)
              ],
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(35, 20, 0, 10),
              child: Text(
                'Recent',
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w700,
                    color: koffWhite),
              ),
            ),
            Expanded(
              child: RecentScrollView(recentSongsList: recentSongsList),
              flex: 1,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(35, 0, 20, 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: <Widget>[
                  Text(
                    'Chats',
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.w700,
                      color: koffWhite
                    ),
                  ),
                  Text(
                    'Show All >',
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w700,
                        color: ksecondryColor),
                  ),
                ],
              ),
            ),
            Expanded(
              child: ListView(
                children: recentSongsList,
              ),
              flex: 2,
            ),
          ],
        ),
      ),
    );
  }
}
