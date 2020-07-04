import 'package:flatchat/functions/glowRemoveScrollBehaviour.dart';
import 'package:flutter/material.dart';

enum ScrollType {
  fixedHeader,
  floatingHeader,
}

class FlatPageWrapper extends StatelessWidget {
  final List<Widget> children;
  final Color backgroundColor;
  final Widget header;
  final ScrollType scrollType;
  final Widget footer;
  final bool reverseBodyList;

  FlatPageWrapper({this.children, this.backgroundColor, this.header, this.scrollType, this.footer, this.reverseBodyList});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        top: 24.0,
      ),
      color: backgroundColor ?? Theme.of(context).primaryColorLight,
      child: _PageBodyWidget(
        scrollType: scrollType,
        children: children,
        header: header,
        footer: footer,
        reverseBodyList: reverseBodyList,
      ),
    );
  }
}

class _PageBodyWidget extends StatelessWidget {
  final List<Widget> children;
  final Widget header;
  final ScrollType scrollType;
  final Widget footer;
  final bool reverseBodyList;
  _PageBodyWidget({this.children, this.header, this.scrollType, this.footer, this.reverseBodyList});

  @override
  Widget build(BuildContext context) {

    double inputPadding() {
      if(scrollType != null && scrollType == ScrollType.floatingHeader){
        return 24.0;
      } else {
        return 0.0;
      }
    }

    double bottomPadding() {
      if(footer != null && scrollType == ScrollType.floatingHeader){
        return 80.0;
      } else {
        return 12.0;
      }
    }

    if (scrollType != null && scrollType == ScrollType.floatingHeader) {
      return Stack(
        children: [
          Positioned(
            child: ScrollConfiguration(
              behavior: GlowRemoveScrollBehaviour(),
              child: ListView(
                reverse: reverseBodyList ?? false,
                padding: EdgeInsets.only(
                  top: 122.0,
                  bottom: bottomPadding(),
                ),
                children: children,
              ),
            ),
          ),
          Positioned(
            child: header ?? Container(),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Padding(
              padding: EdgeInsets.all(inputPadding()),
              child: footer,
            ),
          ),
        ],
      );
    } else {
      return Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          header ?? Container(),
          Expanded(
            child: ScrollConfiguration(
              behavior: GlowRemoveScrollBehaviour(),
              child: ListView(
                reverse: reverseBodyList ?? false,
                padding: EdgeInsets.all(0.0),
                children: children,
              ),
            )
          ),
          footer ?? Container(),
        ],
      );
    }
  }

}
