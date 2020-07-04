import 'package:flutter/material.dart';

class FlatActionButton extends StatelessWidget {
  final Icon icon;
  final IconData iconData;
  final Color iconColor;
  final double iconSize;
  final Function onPressed;
  FlatActionButton({this.icon, this.onPressed, this.iconData, this.iconColor, this.iconSize});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        padding: EdgeInsets.all(8.0),
        child: icon ?? Icon(
          iconData ?? Icons.arrow_back,
          size: iconSize ?? 32.0,
          color: iconColor ?? Theme.of(context).primaryColorDark,
        ),
      ),
    );
  }
}