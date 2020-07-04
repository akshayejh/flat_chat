import 'package:flatchat/flat_widgets/flat_action_btn.dart';
import 'package:flutter/material.dart';

class FlatMessageInputBox extends StatelessWidget {
  final Widget prefix;
  final Widget suffix;
  final bool floating;
  FlatMessageInputBox({this.prefix, this.suffix, this.floating});

  Widget _isFloating() {
    if(floating != null && floating == true) {
      return Positioned(
        bottom: 24.0,
        right: 24.0,
        left: 24.0,
        child: _FlatMessageBox(
          floating: floating,
          prefix: prefix,
          suffix: suffix,
        ),
      );
    } else {
      return _FlatMessageBox(
        floating: floating,
        prefix: prefix,
        suffix: suffix,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return _isFloating();
  }
}

class _FlatMessageBox extends StatelessWidget {
  final Widget prefix;
  final Widget suffix;
  final bool floating;
  _FlatMessageBox({this.prefix, this.suffix, this.floating});

  double cornerRadius() {
    if(floating != null && floating == true) {
      return 60.0;
    } else {
      return 0.0;
    }
  }

  double padding() {
    if(floating != null && floating == true) {
      return 12.0;
    } else {
      return 8.0;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(cornerRadius()),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            spreadRadius: 20,
            blurRadius: 20,
            offset: Offset(0, -5), // changes position of shadow
          )
        ],
      ),
      padding: EdgeInsets.symmetric(
        horizontal: padding(),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: [
          prefix ?? SizedBox(width: 0, height: 0,),
          Expanded(
            child: TextField(
              decoration: InputDecoration(
                hintText: "Enter Message...",
                border: InputBorder.none,
                contentPadding: EdgeInsets.all(16.0,),
              ),
            ),
          ),
          suffix ?? SizedBox(width: 0, height: 0,),
          FlatActionButton(
            icon: Icon(
              Icons.send,
              size: 24.0,
            ),
          ),
        ],
      ),
    );
  }
}

