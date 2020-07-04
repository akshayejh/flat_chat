import 'package:flutter/material.dart';

class FlatPageHeader extends StatelessWidget {
  final String title;
  final double textSize;
  final FontWeight fontWeight;
  final Color backgroundColor;
  final Color textColor;
  final Widget suffixWidget;
  final Widget prefixWidget;
  FlatPageHeader({this.title, this.textSize, this.fontWeight, this.backgroundColor, this.textColor, this.suffixWidget, this.prefixWidget});

  @override
  Widget build(BuildContext context) {

    double paddingRight() {
      if(suffixWidget == null){
        return 24.0;
      } else {
        return 16.0;
      }
    }

    double paddingLeft() {
      if(prefixWidget == null) {
        return 24.0;
      } else {
        return 16.0;
      }
    }

    double headerPadding() {
      if(prefixWidget == null) {
        return 0.0;
      } else {
        return 8.0;
      }
    }

    Color _backgroundColor() {
      if(backgroundColor != null){
        return backgroundColor;
      } else {
        return Theme.of(context).primaryColorLight;
      }
    }

    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: FractionalOffset.topCenter,
          end: FractionalOffset.bottomCenter,
          stops: [
            0.0,
            0.7,
            1,
          ],
          colors: [
            _backgroundColor(),
            _backgroundColor().withOpacity(0.9),
            _backgroundColor().withOpacity(0.0),
          ]
        )
      ),
      padding: EdgeInsets.only(
        top: 50.0,
        left: paddingLeft(),
        right: paddingRight(),
        bottom: 24.0,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            child: Row(
              children: [
                prefixWidget ?? Container(),
                Padding(
                  padding: EdgeInsets.only(
                    left: headerPadding(),
                  ),
                  child: Text(
                    title ?? "Header",
                    style: TextStyle(
                      color: textColor ?? Theme.of(context).primaryColorDark,
                      fontSize: textSize ?? 30.0,
                      fontWeight: fontWeight ?? FontWeight.w700
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            child: suffixWidget,
          ),
        ],
      ),
    );
  }
}