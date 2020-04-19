import 'package:flutter/material.dart';


class LongButton extends StatelessWidget {
  const LongButton({
    Key key,
    @required this.buttonColor,
    @required this.buttonText,
    this.onTapAction
  }) : super(key: key);

  final Color buttonColor;
  final String buttonText;
  final Function onTapAction;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 16.0),
      child: Material(
        elevation: 5.0,
        color: buttonColor,
        borderRadius: BorderRadius.circular(40.0),
        child: MaterialButton(
          onPressed: onTapAction,
          minWidth: 300,
          height: 42.0,
          child: Text(
            buttonText,
            style: TextStyle(color: Colors.white,fontSize: 15),
          ),
        ),
      ),
    );
  }
}
