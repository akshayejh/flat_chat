import 'package:flutter/material.dart';

class SectionHeader extends StatelessWidget {
  // TODO:: Major Modifications required in this widget, (Incomplete Widget)
  final String text;

  SectionHeader({this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 24.0,
      ),
      child: Text(
        text ?? "Section Header",
        style: TextStyle(
          fontWeight: FontWeight.w700,
          fontSize: 16.0,
        ),
      ),
    );
  }
}