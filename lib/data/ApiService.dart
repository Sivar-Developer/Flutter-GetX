import 'package:flutter_getx/models/ProductModel.dart';
import 'package:http/http.dart' as http;

class ApiService
{
  static var client = http.Client();

  static Future<List<ProductModel>> fetchProducts() async {
    var response = await client.get('https://makeup-api.herokuapp.com/api/v1/products.json?brand=marienatie');
    if (response.statusCode == 200) {
      var jsonString = response.body;
      return productModelFromJson(jsonString);
    } else {
      return [];
    }
  }
}