import 'package:dio/dio.dart';

import '../crud_env/crud_env.dart';

httpGet(String url) async {
  if (url.startsWith("http") == false) {
    url = CrudEnv.baseUrl + url;
  }

  try {
    return await Dio().get(
      url,
      options: Options(headers: CrudEnv.headers),
    );
  } on Exception catch (err) {
    throw (err);
  }
}

httpPost(String url, Map<String, dynamic> data) async {
  if (url.startsWith("http") == false) {
    url = CrudEnv.baseUrl + url;
  }

  try {
    await Dio().post(
      url,
      options: Options(headers: CrudEnv.headers),
      data: data,
    );
  } on Exception catch (err) {
    throw (err);
  }
}

httpPut(String url, Map<String, dynamic> data) async {
  if (url.startsWith("http") == false) {
    url = CrudEnv.baseUrl + url;
  }

  try {
    await Dio().put(
      url,
      options: Options(headers: CrudEnv.headers),
      data: data,
    );
  } on Exception catch (err) {
    throw (err);
  }
}

httpDelete(String url) async {
  if (url.startsWith("http") == false) {
    url = CrudEnv.baseUrl + url;
  }

  try {
    await Dio().delete(
      url,
      options: Options(headers: CrudEnv.headers),
    );
  } on Exception catch (err) {
    throw (err);
  }
}
