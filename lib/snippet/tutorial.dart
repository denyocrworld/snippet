import 'dart:convert';

import 'package:dio/dio.dart';

Future<String> loginAndGetToken() async {
  var data = FormData.fromMap(
      {'email': 'alaa.qutaish@gmail.com', 'password': 'password'});

  var dio = Dio();
  var response = await dio.request(
    'http://64.226.104.213:3000/api/v1/login',
    options: Options(
      method: 'POST',
    ),
    data: data,
  );

  return response.data["data"]["token"];
}

void main() async {
  var token = await loginAndGetToken();
  print("Token: $token");
  print("Login success!");

  var headers = {
    'Authorization': 'Bearer $token',
    'Content-Type': 'multipart/form-data',
  };

  var data = FormData.fromMap({
    'files': [
      await MultipartFile.fromFile(
        // 'C:\\Users\\denyo\\OneDrive\\Desktop\\glasdoor.png"',
        'C:/Users/denyo/OneDrive/Desktop/glasdoor.png',
        filename: 'C:/Users/denyo/OneDrive/Desktop/glasdoor.png',
      )
    ],
  });

  var dio = Dio();
  var response = await dio.request(
    'http://64.226.104.213:3000/api/v1/flats/images/54eafd38-808d-46a6-9fa9-ccfaa31609ac',
    options: Options(
      method: 'POST',
      headers: headers,
      validateStatus: (_) => true,
    ),
    data: data,
  );
  print(response.data);
  print(response.extra);
  print(response.statusMessage);
  print("---");

  if (response.statusCode == 200) {
    print(json.encode(response.data));
  } else {
    print(response.statusMessage);
  }
}
