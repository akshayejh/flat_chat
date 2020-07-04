import 'package:flutter/material.dart';

class FlatProfileImage extends StatelessWidget {

  final bool outlineIndicator;
  final Color outlineColor;
  final bool onlineIndicator;
  final Color onlineColor;
  final String imageUrl;
  final double size;
  final Function onPressed;
  final Color backgroundColor;

  FlatProfileImage(
    {
      this.outlineIndicator,
      this.onlineColor,
      this.outlineColor,
      this.imageUrl,
      this.size,
      this.onlineIndicator,
      this.onPressed,
      this.backgroundColor,
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

  double imageSize() {
    if(size != null) {
      return size - 4.0;
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
      return InkResponse(
        onTap: onPressed,
        child: Stack(
          children: [
            Container(
              margin: EdgeInsets.all(8.0),
              width: size ?? 60.0,
              height: size ?? 60.0,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: flatIndicatorBorder(outlineColor ?? Theme.of(context).primaryColor)),
              child: FlatIndicatorImage(
                width: imageSize(),
                height: imageSize(),
                indicator: outlineIndicator ?? false,
                image: imageUrl,
              ),
            ),
            OnlineIndicator(
              isEnabled: showOnlineIndicator(),
              color: onlineColor,
              size: size ?? 60.0,
              borderColor: backgroundColor,
            ),
          ],
        ),
      );
    } else {
      return InkResponse(
        onTap: onPressed,
        child: Stack(
          children: [
            FlatIndicatorImage(
              width: size ?? 60.0,
              height: size ?? 60.0,
              indicator: outlineIndicator ?? false,
              image: imageUrl,
            ),
            OnlineIndicator(
              isEnabled: showOnlineIndicator(),
              color: onlineColor,
              size: size ?? 60.0,
              borderColor: backgroundColor,
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
  final double size;
  final Color borderColor;
  OnlineIndicator({this.isEnabled, this.color, this.size, this.borderColor});

  @override
  Widget build(BuildContext context) {
    double position = (size/100) * 15.0;
    print("Size: $size, Position: $position");
    return Positioned(
      bottom: position ?? 0.0,
      right: position ?? 0.0,
      child: Container(
        width: isEnabled ? 15.0 : 0.0,
        height: isEnabled ? 15.0 : 0.0,
        decoration: BoxDecoration(
          color: color ?? Theme.of(context).primaryColor,
          border: Border.all(
            color: borderColor ?? Theme.of(context).primaryColorLight,
            width: 2.5,
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
        shape: BoxShape.circle
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
        image,
        fit: BoxFit.cover,
      );
    }
  }
}
