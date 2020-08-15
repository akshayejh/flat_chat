/// avatar : "imageUrl"
/// name : "Victor"
/// phone : "+243978154329"
/// lastConnexion : "1597493787"
/// isOnline : false
/// uid : "dhiu34893jnsjdsyurjd"

class User {
  String avatar;
  String name;
  String phone;
  String lastConnexion;
  bool isOnline;
  String uid;

  User(
      {this.avatar,
      this.name,
      this.phone,
      this.lastConnexion,
      this.isOnline,
      this.uid});

  User.fromJson(dynamic json) {
    avatar = json["avatar"];
    name = json["name"];
    phone = json["phone"];
    lastConnexion = json["lastConnexion"];
    isOnline = json["isOnline"];
    uid = json["uid"];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map["avatar"] = avatar;
    map["name"] = name;
    map["phone"] = phone;
    map["lastConnexion"] = lastConnexion;
    map["isOnline"] = isOnline;
    map["uid"] = uid;
    return map;
  }
}
