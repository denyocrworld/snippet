import 'package:dio/dio.dart';

import '../model/user/user/user.dart';

class UserService {
  Future<List<User>> getUsers() async {
    var response = await Dio().get(
      "https://reqres.in/api/users",
      options: Options(
        headers: {
          "Content-Type": "application/json",
        },
      ),
    );
    Map obj = response.data;
    var items = obj["data"];
    List<User> users = [];
    for (var item in items) {
      User user = User.fromJson(item);
      users.add(user);
    }
    return users;
  }
}
