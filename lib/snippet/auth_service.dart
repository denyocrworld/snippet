import 'package:dio/dio.dart';
import 'package:hyper_ui/service/local_data_service/local_data_service.dart';

import '../../model/user/user.dart';

class AuthService {
  static User? currentUser;
  static String? token;

  login({
    required String email,
    required String password,
  }) async {
    try {
      var response = await Dio().post(
        "https://capekngoding.com/demo/api/auth/login",
        options: Options(
          headers: {
            "Content-Type": "application/json",
          },
        ),
        data: {
          "email": email,
          "password": password,
        },
      );
      Map<String, dynamic> obj = response.data;
      Map<String, dynamic> userMap = obj["data"];
      currentUser = User.fromJson(userMap);
      token = currentUser!.token;

      DB.setUser(currentUser!.toJson());
      DB.setToken(token!);
    } on Exception catch (err) {
      print(err);
    }
  }
}

// void main() async {
//   var email = AuthService.currentUser?["email"];
//   var token = AuthService.token;
// }
