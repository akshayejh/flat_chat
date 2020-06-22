import 'package:flatchat/flat_widgets/flat_add_moment_btn.dart';
import 'package:flatchat/flat_widgets/flat_chat_item.dart';
import 'package:flatchat/flat_widgets/flat_counter.dart';
import 'package:flatchat/flat_widgets/flat_page_header.dart';
import 'package:flatchat/flat_widgets/flat_profile_image.dart';
import 'package:flatchat/flat_widgets/flat_section_header.dart';
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
          // app. Read the docs for more information about color usage: TODO:: Create Documentation for app colors.
          primaryColor: Color(0xff5B428F),
          accentColor: Color(0xffF56D58),
          primaryColorDark: Color(0xff262833),
          primaryColorLight: Color(0xffFCF9F5)),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: AppPage(),
      ),
    );
  }
}

class AppPage extends StatefulWidget {
  @override
  _AppPageState createState() => _AppPageState();
}

class _AppPageState extends State<AppPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: Colors.white,
      child: ListView(
        scrollDirection: Axis.vertical,
        children: [
          FlatPageHeader(
            title: "Flat Chat",
          ),
          SectionHeader(
            text: "Moments",
          ),
          // TODO:: Container Height is causing issue of inner element heights
          Container(
            height: 108.0,
            padding: EdgeInsets.symmetric(vertical: 16.0),
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                Container(
                  margin: EdgeInsets.only(left: 16.0),
                  child: FlatAddMomentBtn()),
                FlatProfileImage(
                  width: 60.0,
                  height: 60.0,
                  outlineIndicator: true,
                  onlineIndicator: true,
                  imageUrl:
                  'https://images.pexels.com/photos/3866555/pexels-photo-3866555.png?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260',
                ),
                FlatProfileImage(
                  width: 60.0,
                  height: 60.0,
                  outlineIndicator: true,
                  onlineIndicator: false,
                  outlineColor: Color(0xFF262833).withOpacity(0.3),
                  imageUrl:
                  'https://images.pexels.com/photos/4618392/pexels-photo-4618392.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260',
                ),
                FlatProfileImage(
                  width: 60.0,
                  height: 60.0,
                  outlineIndicator: true,
                  onlineIndicator: false,
                  outlineColor: Color(0xFF262833).withOpacity(0.3),
                  imageUrl:
                  'https://images.pexels.com/photos/1261731/pexels-photo-1261731.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260',
                ),
                FlatProfileImage(
                  width: 60.0,
                  height: 60.0,
                  outlineIndicator: true,
                  onlineIndicator: false,
                  imageUrl:
                  'https://images.pexels.com/photos/3699259/pexels-photo-3699259.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260',
                ),
                FlatProfileImage(
                  width: 60.0,
                  height: 60.0,
                  outlineIndicator: true,
                  onlineIndicator: false,
                  outlineColor: Color(0xFF262833).withOpacity(0.3),
                  imageUrl:
                  'https://images.pexels.com/photos/3078831/pexels-photo-3078831.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260',
                )
              ],
            ),
          ),
          SectionHeader(
            text: "Marked Important",
          ),
          FlatChatItem(
            profileImage: FlatProfileImage(
              onlineIndicator: true,
              imageUrl: 'https://images.pexels.com/photos/3866555/pexels-photo-3866555.png?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260',
            ),
            name: "Alix Cage",
            message: "Something new here, wasup chan",
            multiLineMessage: true,
          ),
          SectionHeader(
            text: "Messages",
          ),
          FlatChatItem(
            profileImage: FlatProfileImage(
              imageUrl: 'https://images.pexels.com/photos/3078831/pexels-photo-3078831.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260',
              outlineIndicator: false,
              onlineIndicator: true,
            ),
            name: "Akshaye",
            message: "Hey wasup bro, where have you been for so long? I call you in a few days, check on you if are working on the project assigned by yourself.",
            counter: FlatCounter(
              text: "3",
            ),
            multiLineMessage: true,
          ),
          FlatChatItem(),
          FlatChatItem(),
          FlatChatItem(),
          FlatChatItem()
        ],
      ),
    );
  }
}