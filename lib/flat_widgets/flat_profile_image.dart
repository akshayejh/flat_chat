import 'package:flutter/material.dart';

class FlatProfileImage extends StatelessWidget {

  // TODO:: This widget requires major refactoring of code.
  // TODO:: A lot of components are static

  final bool outlineIndicator;
  final Color outlineColor;
  final bool onlineIndicator;
  final Color onlineColor;
  final String imageUrl;
  final double width;
  final double height;
  final Function onPressed;

  FlatProfileImage(
    {
      this.outlineIndicator,
      this.onlineColor,
      this.outlineColor,
      this.imageUrl,
      this.width,
      this.height,
      this.onlineIndicator,
      this.onPressed,
    }
  );

  Border flatIndicatorBorder(Color color) {
    if (outlineIndicator == null) {
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
    if(outlineIndicator != null && outlineIndicator == true) {
      return GestureDetector(
        onTap: onPressed,
        child: Stack(
          children: [
            Container(
              margin: EdgeInsets.all(8.0),
              width: width ?? 60.0,
              height: height ?? 60.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(200.0), // TODO:: Dynamic Border radius
                border: flatIndicatorBorder(outlineColor ?? Theme.of(context).primaryColor)),
              child: FlatIndicatorImage(
                width: imageWidth(),
                height: imageHeight(),
                indicator: outlineIndicator ?? false,
                image: imageUrl,
              ),
            ),
            OnlineIndicator(
              isEnabled: showOnlineIndicator(),
              color: onlineColor,
            ),
          ],
        ),
      );
    } else {
      return GestureDetector(
        onTap: onPressed,
        child: Stack(
          children: [
            FlatIndicatorImage(
              width: width ?? 60.0,
              height: height ?? 60.0,
              indicator: outlineIndicator ?? false,
              image: imageUrl,
            ),
            OnlineIndicator(
              isEnabled: showOnlineIndicator(),
              color: onlineColor,
            )
          ],
        ),
      );
    }
  }
}

class OnlineIndicator extends StatelessWidget {
  final bool isEnabled;
  final Color color;
  OnlineIndicator({this.isEnabled, this.color});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 10.0, // TODO:: Both positions needs to be dynamic
      right: 10.0,
      child: Container(
        width: isEnabled ? 15.0 : 0.0,
        height: isEnabled ? 15.0 : 0.0,
        decoration: BoxDecoration(
          color: color ?? Theme.of(context).primaryColor,
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
        child: profileImage(),
      ),
    );
  }

  Widget profileImage() {
    if(image == null || image.isEmpty){
      return Image.asset(
        'assets/images/default_profile_image.png',
        fit: BoxFit.cover,
      );
    } else {
      return Image.network(
        image ?? 'https://images.pexels.com/photos/1261731/pexels-photo-1261731.jpeg',
        fit: BoxFit.cover,
      );
    }
  }
}
