import 'package:flutter/material.dart';
import 'package:flatchat/flat_widgets/flat_info_page_wrapper.dart';

class Loginpage extends StatefulWidget {
  static final String id = "Loginpage";

  @override
  _LoginpageState createState() => _LoginpageState();
}

class _LoginpageState extends State<Loginpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FlatInfoPageWrapper(
        heading: "Login Page",
        subHeading: "Welcome to Flat Social UI Kit. Please, login to your account to continue using the app.",
      ),
    );
  }
}
