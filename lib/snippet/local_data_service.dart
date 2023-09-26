import 'dart:convert';

import 'package:hyper_ui/model/user/user.dart';
import 'package:hyper_ui/service/auth_service/auth_service.dart';
import 'package:shared_preferences/shared_preferences.dart';

class DB {
  static late SharedPreferences db;

  static init() async {
    db = await SharedPreferences.getInstance();
    var userMap = getUser();
    var token = getToken();

    //http post request /check-token
    //if expired
    // AuthService.currentUser = null
    // AuthService.token = null

    if (userMap != null) {
      AuthService.currentUser = User.fromJson(userMap);
    }
    AuthService.token = token;
  }

  static setToken(String token) {
    db.setString("token", token);
  }

  static String? getToken() {
    return db.getString("token");
  }

  static clearDatabase() async {
    await db.clear();
  }

  static setUser(Map currentUser) {
    db.setString("current_user", jsonEncode(currentUser));
  }

  static Map<String, dynamic>? getUser() {
    var jsonString = db.getString("current_user");
    if (jsonString != null) {
      return jsonDecode(jsonString);
    }
    return null;
  }

  static set(String key, String value) {
    db.setString(key, value);
  }

  static String? get(String key) {
    return db.getString(key);
  }
}
