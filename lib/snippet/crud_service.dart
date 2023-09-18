import 'package:faker_dart/faker_dart.dart';

import '../crud_http_util/crud_http_util.dart';

class CrudService {
  get({
    int page = 1,
  }) async {
    var response = await httpGet(
      "api/products?page=1",
    );
    return response;
  }

  create({
    required String productName,
    required num price,
  }) async {
    try {
      await httpPost(
        "api/products",
        {
          "product_name": productName,
          "price": price,
        },
      );
    } on Exception catch (err) {
      throw (err);
    }
  }

  update({
    required int id,
    required String productName,
    required num price,
  }) async {
    try {
      await httpPut(
        "api/products/$id",
        {
          "product_name": productName,
          "price": price,
        },
      );
    } on Exception catch (err) {
      throw (err);
    }
  }

  delete(int id) async {
    try {
      await httpDelete("api/products/$id");
    } on Exception catch (err) {
      print(err);
    }
  }

  generateData() async {
    for (var i = 0; i < 10; i++) {
      await create(
        productName: Faker.instance.commerce.productName(),
        price: num.tryParse(Faker.instance.commerce
                .price(symbol: "", min: 1, max: 1000)
                .toString()) ??
            0,
      );
    }
  }
}
