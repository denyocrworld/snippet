import 'package:dio/dio.dart';
import 'package:faker_dart/faker_dart.dart';

class TutorialProductService {
  Future<List> getProducts({
    required int page,
  }) async {
    var response = await Dio().get(
      "https://capekngoding.com/demo/api/products?page=$page",
      options: Options(
        headers: {
          "Content-Type": "application/json",
        },
      ),
    );
    Map obj = response.data;
    return obj["data"];
  }

  Future generateProducts() async {
    for (var i = 1; i <= 10; i++) {
      await Dio().post(
        "https://capekngoding.com/demo/api/products",
        options: Options(
          headers: {
            "Content-Type": "application/json",
          },
        ),
        data: {
          "photo": "https://picsum.photos/$i",
          "product_name": Faker.instance.commerce.productName(),
          "price": Faker.instance.commerce.price(symbol: ''),
        },
      );
    }
  }
}
