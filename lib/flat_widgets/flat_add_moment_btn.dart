import 'package:flutter/material.dart';

class FlatAddMomentBtn extends StatelessWidget {

  // TODO:: Look into user touch feedback
  // TODO:: Border radius may only work for a particular width

  final IconData icon;
  final String image; // Image will not be used if the icon is assigned.
  final Color backgroundColor;
  final Color iconColor;
  final double width;
  final double height;
  final Function onPressed;
  FlatAddMomentBtn(
    {
      this.icon,
      this.image,
      this.backgroundColor,
      this.iconColor,
      this.width,
      this.height,
      this.onPressed
    }
  );

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        margin: EdgeInsets.all(8.0),
        width: width ?? 60.0,
        height: height ?? 60.0,
        decoration: BoxDecoration(
            color: backgroundColor ?? Theme.of(context).primaryColor,
            borderRadius: BorderRadius.circular(60.0)),
        child: FBtnIcon(
          icon: icon,
          color: iconColor,
          image: image,
        ),
      ),
    );
  }
}

class FBtnIcon extends StatelessWidget {
  final IconData icon;
  final Color color;
  final String image;
  FBtnIcon({this.icon, this.color, this.image});

  @override
  Widget build(BuildContext context) {
     if(icon != null) {
      return Icon(
        icon,
        color: color ?? Colors.white,
      );
    } else {
       return Image.asset(
        image ?? 'assets/images/flat_add_icon.png',
        scale: 2.0,
      );
    }
  }
}