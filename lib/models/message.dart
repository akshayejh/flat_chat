import 'package:flatchat/models/user.dart';

/// message : "I love your job"
/// time : 1597493787
/// status : "read"
/// sender : {"avatar":"https://urlforimage.png","name":"Victor shukuru","phone":"243978154329","isOneline":true,"uid":"uniqueidforoneuser"}
/// receiver : {"avatar":"https://urlforimage.png","name":"Victor shukuru","phone":"243978154329","isOneline":true,"uid":"uniqueidforoneuser"}

class Message {
  String message;
  int time;
  String status;
  User sender;
  User receiver;

  Message({this.message, this.time, this.status, this.sender, this.receiver});

  Message.fromJson(dynamic json) {
    message = json["message"];
    time = json["time"];
    status = json["status"];
    sender = json["sender"] != null ? User.fromJson(json["sender"]) : null;
    receiver =
        json["receiver"] != null ? User.fromJson(json["receiver"]) : null;
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map["message"] = message;
    map["time"] = time;
    map["status"] = status;
    if (sender != null) {
      map["sender"] = sender.toJson();
    }
    if (receiver != null) {
      map["receiver"] = receiver.toJson();
    }
    return map;
  }
}
