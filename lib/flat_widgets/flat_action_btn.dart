import 'package:flutter/material.dart';

class FlatActionButton extends StatelessWidget {
  final Icon icon;
  final Function onPressed;
  FlatActionButton({this.icon, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        padding: EdgeInsets.all(8.0),
        child: icon ?? Icon(
          Icons.arrow_back,
          size: 32.0,
        ),
      ),
    );
  }
}