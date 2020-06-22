import 'package:flutter/material.dart';

class FlatPageHeader extends StatelessWidget {
  final String title;

  FlatPageHeader({this.title});

  // TODO:: Major Modifications required in this widget, (Incomplete Widget)

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(24.0),
      margin: EdgeInsets.only(
        top: 30.0,
      ),
      child: Row(
        children: [
          Text(
            title ?? "Flat Chat",
            style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.w700),
          )
        ],
      ),
    );
  }
}