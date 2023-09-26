import 'package:dio/dio.dart';
import 'package:faker_dart/faker_dart.dart';

class TutorialCustomerService {
  Future<List> getCustomers({
    required int page,
  }) async {
    var response = await Dio().get(
      "https://capekngoding.com/demo/api/customers?page=$page",
      options: Options(
        headers: {
          "Content-Type": "application/json",
        },
      ),
    );
    Map obj = response.data;
    return obj["data"];
  }

  Future generateCustomers() async {
    for (var i = 1; i <= 10; i++) {
      await Dio().post(
        "https://capekngoding.com/demo/api/customers",
        options: Options(
          headers: {
            "Content-Type": "application/json",
          },
        ),
        data: {
          "photo": "https://picsum.photos/$i",
          "name": Faker.instance.name.fullName(),
        },
      );
    }
  }
}
