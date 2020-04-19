import 'package:flutter/material.dart';


class RecentScrollView extends StatelessWidget {
  const RecentScrollView({
    Key key,
    @required this.recentSongsList,
  }) : super(key: key);

  final List recentSongsList;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
      child: ListView.separated(
        shrinkWrap: true,
        itemCount: recentSongsList.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (BuildContext context, int index) {
          return recentSongsList[index];
        },
        separatorBuilder: (BuildContext context, int index) => SizedBox(
          width: 20,
        ),
        // children: recentSongsList
      ),
    );
  }
}
