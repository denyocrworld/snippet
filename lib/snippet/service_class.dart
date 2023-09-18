/*
//#GROUP_TEMPLATE class
//#TEMPLATE class_service
import 'package:dio/dio.dart';

class TodoService {
  Future<List<Map<String, dynamic>>> get() async {
    final Dio dio = Dio();
    final String url = 'https://capekngoding.com/demo/api/todos';

    try {
      final response = await dio.get(
        url,
        options: Options(
          headers: {
            'Content-Type': 'application/json',
          },
        ),
      );

      return List<Map<String, dynamic>>.from(response.data['data']);
    } catch (e) {
      throw e;
    }
  }

  Future<Map<String, dynamic>> getById(int id) async {
    final Dio dio = Dio();
    final String url = 'https://capekngoding.com/demo/api/todos/$id';

    try {
      final response = await dio.get(
        url,
        options: Options(
          headers: {
            'Content-Type': 'application/json',
          },
        ),
      );

      return Map<String, dynamic>.from(response.data['data']);
    } catch (e) {
      throw e;
    }
  }

  Future<Map<String, dynamic>> create(Map<String, dynamic> data) async {
    final Dio dio = Dio();
    final String url = 'https://capekngoding.com/alex/api/todos';

    try {
      final response = await dio.post(
        url,
        data: data,
        options: Options(
          headers: {
            'Content-Type': 'application/json',
          },
        ),
      );

      return Map<String, dynamic>.from(response.data['data']);
    } catch (e) {
      throw e;
    }
  }

  Future<Map<String, dynamic>> update(int id, Map<String, dynamic> data) async {
    final Dio dio = Dio();
    final String url = 'https://capekngoding.com/demo/api/todos/$id';

    try {
      final response = await dio.put(
        url,
        data: data,
        options: Options(
          headers: {
            'Content-Type': 'application/json',
          },
        ),
      );

      return Map<String, dynamic>.from(response.data['data']);
    } catch (e) {
      throw e;
    }
  }

  Future<void> delete(int id) async {
    final Dio dio = Dio();
    final String url = 'https://capekngoding.com/demo/api/todos/$id';

    try {
      await dio.delete(
        url,
        options: Options(
          headers: {
            'Content-Type': 'application/json',
          },
        ),
      );
    } catch (e) {
      throw e;
    }
  }

  Future<void> deleteAll() async {
    final Dio dio = Dio();
    final String url =
        'https://capekngoding.com/demo/api/todos/action/delete-all';

    try {
      await dio.delete(
        url,
        options: Options(
          headers: {
            'Content-Type': 'application/json',
          },
        ),
      );
    } catch (e) {
      throw e;
    }
  }
}
//#END
*/