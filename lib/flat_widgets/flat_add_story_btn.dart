import 'package:flutter/material.dart';

class FlatAddStoryBtn extends StatelessWidget {

  final Icon icon;
  final String image; // Image will not be used if the icon is assigned.
  final Color backgroundColor;
  final Color iconColor;
  final double size;
  final Function onPressed;

  FlatAddStoryBtn(
    {
      this.icon,
      this.image,
      this.backgroundColor,
      this.iconColor,
      this.size,
      this.onPressed
    }
  );

  @override
  Widget build(BuildContext context) {
    return InkResponse(
      onTap: onPressed,
      child: Container(
        margin: EdgeInsets.all(8.0),
        width: size ?? 60.0,
        height: size ?? 60.0,
        decoration: BoxDecoration(
          color: backgroundColor ?? Theme.of(context).primaryColor,
          shape: BoxShape.circle,
        ),
        child: BtnIcon(
          icon: icon,
          color: iconColor,
          image: image,
        ),
      ),
    );
  }
}

class BtnIcon extends StatelessWidget {
  final Icon icon;
  final Color color;
  final String image;
  BtnIcon({this.icon, this.color, this.image});

  @override
  Widget build(BuildContext context) {
     if(icon != null) {
      return icon;
    } else {
       return Image.asset(
        image ?? 'assets/images/flat_add_icon.png',
        scale: 2.0,
      );
    }
  }
}