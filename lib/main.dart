import 'package:flatchat/screens/aboutpage.dart';
import 'package:flatchat/screens/loginpage.dart';
import 'package:flatchat/screens/chatpage.dart';
import 'package:flatchat/screens/homepage.dart';
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
        // app.
        primaryColor: Color(0xff5B428F),
        accentColor: Color(0xffF56D58),
        primaryColorDark: Color(0xff262833),
        primaryColorLight: Color(0xffFCF9F5),
      ),
      darkTheme: ThemeData(
        // This changes font for the entire app using the Google Fonts package
        // from pub.dev : https://pub.dev/packages/google_fonts
        textTheme: GoogleFonts.nunitoSansTextTheme(
          Theme.of(context).textTheme,
        ),
        // You can change theme colors to directly change colors for the whole
        // app.
        primaryColor: Color(0xff5B428F),
        accentColor: Color(0xffF56D58),
        primaryColorDark: Color(0xffFFFFFF),
        primaryColorLight: Color(0xff000000),
      ),
      debugShowCheckedModeBanner: false,
      routes: {
        Loginpage.id: (context) => Loginpage(),
        Aboutpage.id: (context) => Aboutpage(),
        ChatPage.id: (context) => ChatPage(),
        Homepage.id: (context) => Homepage(),
      },
      initialRoute: Aboutpage.id,
    );
  }
}
