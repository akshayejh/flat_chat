import 'package:flatchat/flat_widgets/flat_add_moment_btn.dart';
import 'package:flatchat/flat_widgets/flat_profile_image.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          // This changes font for the entire app using the Google Fonts package
          // from pub.dev : https://pub.dev/packages/google_fonts
          textTheme: GoogleFonts.nunitoSansTextTheme(
            Theme.of(context).textTheme,
          ),
          // You can change theme colors to directly change colors for the whole
          // app. Read the docs for more information about color usage: TODO:: Create Documentation for app colors.
          primaryColor: Color(0xff5B428F),
          accentColor: Color(0xffF56D58),
          primaryColorDark: Color(0xff262833),
          primaryColorLight: Color(0xffFCF9F5)),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisSize: MainAxisSize.max,
          children: [
            FlatHeader(
              title: "Flat Chat",
            ),
            SectionHeader(),
            // TODO:: Container Height is causing issue of inner element heights
            Container(
              height: 108.0,
              padding: EdgeInsets.all(16.0),
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  FlatAddMomentBtn(),
                  FlatProfileImage(
                    width: 60.0,
                    height: 60.0,
                    momentIndicator: true,
                    onlineIndicator: true,
                    imageUrl: 'https://images.pexels.com/photos/3866555/pexels-photo-3866555.png?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260',
                  ),
                  FlatProfileImage(
                    width: 60.0,
                    height: 60.0,
                    momentIndicator: true,
                    onlineIndicator: false,
                    imageUrl: 'https://images.pexels.com/photos/4618392/pexels-photo-4618392.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260',
                  ),
                  FlatProfileImage(
                    width: 60.0,
                    height: 60.0,
                    momentIndicator: true,
                    onlineIndicator: false,
                    imageUrl: 'https://images.pexels.com/photos/1261731/pexels-photo-1261731.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260',
                  ),
                  FlatProfileImage(
                    width: 60.0,
                    height: 60.0,
                    momentIndicator: true,
                    onlineIndicator: false,
                    imageUrl: 'https://images.pexels.com/photos/3699259/pexels-photo-3699259.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260',
                  ),
                  FlatProfileImage(
                    width: 60.0,
                    height: 60.0,
                    momentIndicator: true,
                    onlineIndicator: false,
                    imageUrl: 'https://images.pexels.com/photos/3078831/pexels-photo-3078831.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260',
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class SectionHeader extends StatelessWidget {
  // TODO:: Major Modifications required in this widget, (Incomplete Widget)

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 24.0,
      ),
      child: Text(
        "Section Header",
        style: TextStyle(
          fontWeight: FontWeight.w700,
          fontSize: 16.0,
        ),
      ),
    );
  }
}

class FlatHeader extends StatelessWidget {
  final String title;

  FlatHeader({this.title});

  // TODO:: Major Modifications required in this widget, (Incomplete Widget)

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(24.0),
      margin: EdgeInsets.only(
        top: 30.0,
      ),
      child: Row(
        children: [
          Text(
            title ?? "Flat Chat",
            style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.w700),
          )
        ],
      ),
    );
  }
}
