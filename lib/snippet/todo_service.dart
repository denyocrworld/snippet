import 'package:dio/dio.dart';

import '../../shared/util/dio_helper/dio_helper.dart';

final defaultOptions = Options(
  headers: {
    'Content-Type': 'application/json',
  },
);

class TodoService {
  Future<List<Map<String, dynamic>>> get() async {
    final String url =
        'https://capekngoding.com/demo/api/todos/12312/31231/12323';

    try {
      final response = await dio.get(
        url,
        options: defaultOptions,
      );

      return List<Map<String, dynamic>>.from(response.data['data']);
    } catch (e) {
      throw e;
    }
  }

  Future<Map<String, dynamic>> getById(int id) async {
    final String url = 'https://capekngoding.com/demo/api/todos/id';

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
    final String url = 'https://capekngoding.com/demo/api/todos/id';

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
    final String url = 'https://capekngoding.com/demo/api/todos/id';

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
