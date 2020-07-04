import 'package:flatchat/flat_widgets/flat_action_btn.dart';
import 'package:flatchat/flat_widgets/flat_chat_message.dart';
import 'package:flatchat/flat_widgets/flat_message_input_box.dart';
import 'package:flatchat/flat_widgets/flat_page_header.dart';
import 'package:flatchat/flat_widgets/flat_page_wrapper.dart';
import 'package:flatchat/flat_widgets/flat_profile_image.dart';
import 'package:flutter/material.dart';

class ChatPage extends StatefulWidget {
  static final String id = "ChatPage";

  @override
  _ChatPageState createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FlatPageWrapper(
        scrollType: ScrollType.floatingHeader,
        reverseBodyList: true,
        header: FlatPageHeader(
          prefixWidget: FlatActionButton(
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          title: "Alix Cage",
          suffixWidget: FlatProfileImage(
            size: 35.0,
            onlineIndicator: true,
            imageUrl: 'https://images.pexels.com/photos/3866555/pexels-photo-3866555.png?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260',
            onPressed: () {
              print("Clicked Profile Image");
            },
          ),
        ),
        children: [
          FlatChatMessage(
            message: "Hello World!, This is the first message.",
            messageType: MessageType.sent,
            showTime: true,
            time: "2 mins ago",
          ),
          FlatChatMessage(
            message: "Typing another message from the input box.",
            messageType: MessageType.sent,
            showTime: true,
            time: "2 mins ago",
          ),
          FlatChatMessage(
            message: "Message Length Small.",
            showTime: true,
            time: "2 mins ago",
          ),
          FlatChatMessage(
            message: "Message Length Large. This message has more text to configure the size of the message box.",
            showTime: true,
            time: "2 mins ago",
          ),
          FlatChatMessage(
            message: "Meet me tomorrow at the coffee shop.",
            showTime: true,
            time: "2 mins ago",
          ),
          FlatChatMessage(
            message: "Around 11 o'clock.",
            showTime: true,
            time: "2 mins ago",
          ),
          FlatChatMessage(
            message: "Flat Social UI kit is going really well. Hope this finishes soon.",
            showTime: true,
            time: "2 mins ago",
          ),
          FlatChatMessage(
            message: "Final Message in the list.",
            showTime: true,
            time: "2 mins ago",
          ),
        ],
        footer: FlatMessageInputBox(
          prefix: FlatActionButton(
            iconData: Icons.add,
            iconSize: 24.0,
          ),
          roundedCorners: true,
          suffix: FlatActionButton(
            iconData: Icons.image,
            iconSize: 24.0,
          ),
        ),
      ),
    );
  }
}
