import 'dart:convert';

import 'package:http/http.dart' as http;

import '../../model/model.dart';

class examHelper {
  examHelper._();

  static examHelper apiHelper = examHelper._();

  Future<List<Model>?> getApi() async {
    http.Response response =
        await http.get(Uri.parse("https://dummyjson.com/products"));

    if (response.statusCode == 200) {
      Map decodedData = jsonDecode(response.body);

      List product = decodedData['products'];

      List<Model> allProduct = [];
      product.forEach((element) {
        allProduct.add(
          Model.data(data: element),
        );
      });

      print("=================================");
      print("$response");
      print("=================================");
      return allProduct;
    }
    return null;
  }
}
