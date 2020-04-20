import 'package:flutter/material.dart';


class RecentCardWidget extends StatelessWidget {
  const RecentCardWidget({
    Key key,
    @required this.songName,
    @required this.artistName,
    @required this.duration,
  }) : super(key: key);

  final String songName;
  final String artistName;
  final String duration;

  @override
  Widget build(BuildContext context) {
    return Material(
      type: MaterialType.transparency,
      child: Center(
        child: Container(
          height: 180,
          width: 300,
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('images/albumart.jpeg'),
                fit: BoxFit.cover,
                colorFilter:
                    ColorFilter.mode(Colors.black54, BlendMode.darken)),
            borderRadius: BorderRadius.circular(20),
          ),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  songName,
                  style: TextStyle(
                    fontSize: 30,
                    color: Color(0xFFF8F8FA),
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  artistName,
                  style: TextStyle(
                    fontSize: 20,
                    color: Color(0xFFF8F8FA),
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: 5,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Icon(
                      Icons.timer,
                      size: 18,
                    ),
                    SizedBox(
                      height: 0,
                      width: 4,
                    ),
                    Text(
                      duration + ' min',
                      style: TextStyle(
                        fontSize: 12,
                        color: Color(0xFFF8F8FA),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
