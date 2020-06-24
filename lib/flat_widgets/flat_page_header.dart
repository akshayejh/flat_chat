import 'package:flutter/material.dart';

class FlatPageHeader extends StatelessWidget {
  final String title;
  final double textSize;
  final FontWeight fontWeight;
  final Color backgroundColor;
  final Color textColor;
  FlatPageHeader({this.title, this.textSize, this.fontWeight, this.backgroundColor, this.textColor});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: backgroundColor ?? Colors.white,
      ),
      padding: EdgeInsets.only(
        top: 50.0,
        left: 24.0,
        right: 24.0,
        bottom: 24.0,
      ),
      child: Row(
        children: [
          Text(
            title ?? "Flat Chat",
            style: TextStyle(
              color: textColor ?? Colors.black,
              fontSize: textSize ?? 30.0,
              fontWeight: fontWeight ?? FontWeight.w700
            ),
          )
        ],
      ),
    );
  }
}