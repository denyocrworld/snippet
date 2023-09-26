// To parse this JSON data, do
//
//     final user = userFromJson(jsonString);

import 'dart:convert';

User userFromJson(String str) => User.fromJson(json.decode(str));

String userToJson(User data) => json.encode(data.toJson());

class User {
  int? id;
  String? photo;
  String? name;
  String? email;
  String? role;
  String? token;

  User({
    this.id,
    this.photo,
    this.name,
    this.email,
    this.role,
    this.token,
  });

  factory User.fromJson(Map<String, dynamic> json) => User(
        id: json["id"],
        photo: json["photo"],
        name: json["name"],
        email: json["email"],
        role: json["role"],
        token: json["token"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "photo": photo,
        "name": name,
        "email": email,
        "role": role,
        "token": token,
      };
}
