import 'package:flutter/material.dart';

class FlatProfileImage extends StatelessWidget {

  // TODO:: This widget requires major refactoring of code.
  // TODO:: A lot of components are static

  final bool momentIndicator;
  final bool onlineIndicator;
  final String imageUrl;
  final double width;
  final double height;

  FlatProfileImage(
    {
      this.momentIndicator,
      this.imageUrl,
      this.width,
      this.height,
      this.onlineIndicator
    }
  );

  Border flatIndicatorBorder(Color color) {
    if (momentIndicator == null) {
      return null;
    } else {
      return Border.all(
        color: color,
        width: 2.0,
      );
    }
  }

  double imageWidth() {
    if(width != null) {
      return width - 4.0;
    } else {
      return 8.0;
    }
  }

  double imageHeight() {
    if(height != null) {
      return height - 4.0;
    } else {
      return 8.0;
    }
  }

  bool showOnlineIndicator() {
    if(onlineIndicator != null && onlineIndicator == true) {
      return true;
    } else {
      return false;
    }
  }

  @override
  Widget build(BuildContext context) {
    if(momentIndicator != null && momentIndicator == true) {
      return Stack(
        children: [
          Container(
            margin: EdgeInsets.all(8.0),
            width: width ?? 60.0,
            height: height ?? 60.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(200.0), // TODO:: Dynamic Border radius
              border: flatIndicatorBorder(Theme.of(context).primaryColor)),
            child: FlatIndicatorImage(
              width: imageWidth(),
              height: imageHeight(),
              indicator: momentIndicator ?? false,
              image: imageUrl,
            ),
          ),
          OnlineIndicator(
            isEnabled: showOnlineIndicator(),
          ),
        ],
      );
    } else {
      return Stack(
        children: [
          FlatIndicatorImage(
            width: width ?? 60.0,
            height: height ?? 60.0,
            indicator: momentIndicator ?? false,
            image: imageUrl,
          ),
          OnlineIndicator(
            isEnabled: showOnlineIndicator(),
          )
        ],
      );
    }
  }
}

class OnlineIndicator extends StatelessWidget {
  final bool isEnabled;
  OnlineIndicator({this.isEnabled});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 10.0, // TODO:: Both positions needs to be dynamic
      right: 10.0,
      child: Container(
        width: isEnabled ? 15.0 : 0.0,
        height: isEnabled ? 15.0 : 0.0,
        decoration: BoxDecoration(
          color: Theme.of(context).primaryColor,
          border: Border.all(
            color: Colors.white,
            width: 2.0,
          ),
          borderRadius: BorderRadius.circular(15.0)
        ),
      ),
    );
  }
}

class FlatIndicatorImage extends StatelessWidget {
  final String image;
  final double width;
  final double height;
  final bool indicator;
  FlatIndicatorImage({this.image, this.width, this.height, this.indicator});

  double imageMargin() {
    return indicator ? 4.0 : 8.0;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey,
        borderRadius: BorderRadius.circular(60.0)
      ),
      margin: EdgeInsets.all(imageMargin()),
      width: width,
      height: height,
      child: ClipOval(
        child: Image.network(
          image ?? 'https://images.pexels.com/photos/1261731/pexels-photo-1261731.jpeg',
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
