import 'package:flatchat/flat_widgets/flat_add_moment_btn.dart';
import 'package:flatchat/flat_widgets/flat_chat_item.dart';
import 'package:flatchat/flat_widgets/flat_counter.dart';
import 'package:flatchat/flat_widgets/flat_profile_image.dart';
import 'package:flatchat/main.dart';
import 'package:flutter/material.dart';
import 'dart:math' as math;

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return ScrollConfiguration(
      behavior: ScrollBehaviour(),
      child: CustomScrollView(
        slivers: [
          pageHeader(),
          sectionHeader("Moments"),
          SliverToBoxAdapter(
            child: Container(
              color: Colors.white,
              height: 108.0,
              padding: EdgeInsets.symmetric(vertical: 16.0),
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 16.0),
                    child: FlatAddMomentBtn(),
                  ),
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
          ),
          sectionHeader("Marked Important"),
          SliverToBoxAdapter(
            child: FlatChatItem(
              profileImage: FlatProfileImage(
                onlineIndicator: true,
                imageUrl: 'https://images.pexels.com/photos/3866555/pexels-photo-3866555.png?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260',
              ),
              name: "Alix Cage",
              message: "Something new here, wasup chan",
              multiLineMessage: true,
            ),
          ),
          sectionHeader("Chats"),
          SliverList(
            delegate: SliverChildListDelegate(
              [
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
                FlatChatItem(),
                FlatChatItem(),
                FlatChatItem(),
                FlatChatItem(),
                FlatChatItem(),
                FlatChatItem(),
              ]
            ),
          ),
        ],
      ),
    );
  }

  SliverPersistentHeader pageHeader() {
    return SliverPersistentHeader(
      pinned: true,
      delegate: SliverAppBarDelegate(
          maxHeight: 150.0,
          minHeight: 100.0,
          child: Container(
            alignment: Alignment.bottomLeft,
            color: Colors.white,
            padding: EdgeInsets.symmetric(
              horizontal: 24.0,
              vertical: 16.0,
            ),
            child: Text(
              "Flat Chat",
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.w700,
              ),
            ),
          )),
    );
  }

  SliverPersistentHeader sectionHeader(String text) {
    return SliverPersistentHeader(
      pinned: true,
      floating: false,
      delegate: SliverAppBarDelegate(
        maxHeight: 40.0,
        minHeight: 40.0,
        child: Container(
          alignment: Alignment.centerLeft,
          color: Colors.white,
          padding: EdgeInsets.symmetric(
            horizontal: 24.0,
          ),
          child: Text(
            text ?? "Section Header",
            style: TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: 16.0,
            ),
          ),
        ),
      ),
    );
  }
}

class ScrollBehaviour extends ScrollBehavior {
  @override
  Widget buildViewportChrome(
      BuildContext context, Widget child, AxisDirection axisDirection) {
    return child;
  }
}

class SliverAppBarDelegate extends SliverPersistentHeaderDelegate {
  SliverAppBarDelegate({
    @required this.minHeight,
    @required this.maxHeight,
    @required this.child,
  });

  final double minHeight;
  final double maxHeight;
  final Widget child;

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return SizedBox.expand(
      child: child,
    );
  }

  @override
  double get maxExtent => math.max(minHeight, maxHeight);

  @override
  double get minExtent => minHeight;

  @override
  bool shouldRebuild(SliverPersistentHeaderDelegate oldDelegate) {
    return maxHeight != oldDelegate.maxExtent ||
        minHeight != oldDelegate.minExtent;
  }
}
