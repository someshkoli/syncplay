import 'package:flutter/material.dart';
import 'package:syncplay/components/recentCard.dart';
import 'package:syncplay/components/recentCardScroll.dart';

class RecentCard extends StatefulWidget {
  @override
  _RecentCardState createState() => _RecentCardState();
}

class _RecentCardState extends State<RecentCard> {
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
    return Material(
      color: Colors.white,
      child: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(50),
            child: Text(
              'Recent',
              style: TextStyle(color: Colors.black, fontSize: 20),
            ),
          ),
          Expanded(child: RecentScrollView(recentSongsList: recentSongsList)),
          Expanded(
            child: Container(
              color: Colors.red,
              height: 100,
            ),
          ),
        ],
      ),
    );
  }
}
