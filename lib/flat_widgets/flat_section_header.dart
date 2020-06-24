import 'package:flutter/material.dart';

class FlatSectionHeader extends StatelessWidget {
  final String text;
  final double textSize;
  final FontWeight fontWeight;
  final Color backgroundColor;
  final Color textColor;
  FlatSectionHeader({this.text, this.textSize, this.fontWeight, this.backgroundColor, this.textColor});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: backgroundColor ?? Colors.white,
      ),
      padding: EdgeInsets.symmetric(
        horizontal: 24.0,
      ),
      child: Text(
        text ?? "Section Header",
        style: TextStyle(
          color: textColor ?? Colors.black,
          fontWeight: fontWeight ?? FontWeight.w700,
          fontSize: textSize ?? 16.0,
        ),
      ),
    );
  }
}