import 'package:flutter_getx/data/ApiService.dart';
import 'package:flutter_getx/models/ProductModel.dart';
import 'package:get/get.dart';

class ProductController extends GetxController {

  var isLoading = true.obs;
  var productList = List<ProductModel>.empty().obs;

  @override
  void onInit() {
    fetchProducts();
    super.onInit();
  }

  void fetchProducts() async {
    try {
      isLoading(true);
      var products = await ApiService.fetchProducts();
      if(products !=  null) {
        productList.assignAll(products);
      }
    } finally {
      isLoading(false);
    }
  }
}