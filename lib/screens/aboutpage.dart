import 'package:flatchat/flat_widgets/flat_info_page_wrapper.dart';
import 'package:flatchat/flat_widgets/flat_primary_button.dart';
import 'package:flatchat/screens/homepage.dart';
import 'package:flutter/material.dart';

class Aboutpage extends StatefulWidget {
  static final String id = "Aboutpage";

  @override
  _AboutpageState createState() => _AboutpageState();
}

class _AboutpageState extends State<Aboutpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FlatInfoPageWrapper(
        heading: "About Flat Social",
        subHeading: "Flutter UI Kit - v1.1",
        body: Container(
          padding: EdgeInsets.all(16.0),
          child: Text(
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
            style: TextStyle(
              fontSize: 14.0,
              color: Theme.of(context).primaryColorDark.withOpacity(0.54),
            ),
            textAlign: TextAlign.center,
          ),
        ),
        footer: Container(
          margin: EdgeInsets.symmetric(
            vertical: 16.0,
          ),
          child: FlatPrimaryButton(
            onPressed: () {
              Navigator.pushNamed(context, Homepage.id);
            },
            prefixIcon: Icons.arrow_back,
            textAlign: TextAlign.right,
            text: "Back to Homepage",
          ),
        ),
      ),
    );
  }
}
