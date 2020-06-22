import 'package:flutter/material.dart';

class FlatCounter extends StatelessWidget {
  final Color color;
  final Color textColor;
  final String text;
  FlatCounter({this.color, this.textColor, this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: color ?? Theme.of(context).primaryColor,
        borderRadius: BorderRadius.circular(20.0),
      ),
      padding: EdgeInsets.symmetric(
        horizontal: 12.0,
        vertical: 4.0,
      ),
      child: Text(
        text ?? "0",
        style: TextStyle(
          color: textColor ?? Colors.white,
          fontSize: 14.0,
          fontWeight: FontWeight.w700,
        ),
      ),
    );
  }
}