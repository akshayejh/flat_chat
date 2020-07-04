import 'package:flutter/material.dart';

class FlatSectionHeader extends StatelessWidget {
  final String title;
  final double textSize;
  final FontWeight fontWeight;
  final Color backgroundColor;
  final Color textColor;
  FlatSectionHeader({this.title, this.textSize, this.fontWeight, this.backgroundColor, this.textColor});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: backgroundColor,
      ),
      padding: EdgeInsets.symmetric(
        horizontal: 24.0,
      ),
      child: Text(
        title ?? "Section Header",
        style: TextStyle(
          color: textColor ?? Theme.of(context).primaryColorDark,
          fontWeight: fontWeight ?? FontWeight.w700,
          fontSize: textSize ?? 16.0,
        ),
      ),
    );
  }
}