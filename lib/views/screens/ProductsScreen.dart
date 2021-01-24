import 'package:flutter/material.dart';
import 'package:flutter_getx/config/AppColor.dart';
import 'package:flutter_getx/controllers/ProductController.dart';
import 'package:get/get.dart';

class ProductsScreen extends StatelessWidget {

  ProductController productController = Get.put(ProductController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Products List'),),
      body: Obx(() {
        if(productController.isLoading.value) {
          return Center(child: CircularProgressIndicator());
        } else {
          return ListView.builder(
            itemCount: productController.productList.length,
            itemBuilder: (context, index) {
              var product = productController.productList[index];
              return Column(
                children: [
                  Row(
                    children: [
                      Container(
                        width: 150,
                        height: 150,
                        margin: EdgeInsets.fromLTRB(16, 8, 8, 8),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(8),
                          child: Image.network(
                            product.imageLink,
                            height: 150,
                            width: 150,
                            fit: BoxFit.fill,
                            color: Colors.blue,
                            colorBlendMode: BlendMode.color,
                          ),
                        ),
                      ),
                      Flexible(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(product.name, style: TextStyle(fontSize: 18),),
                            Text(product.brand, style: TextStyle(fontSize: 14, color: AppColor.grey),),
                            Text(product.category, style: TextStyle(fontSize: 14, color: AppColor.grey),),
                          ],
                        ),
                      )
                    ],
                  )
                ],
              );
            },
          );
        }
      })
    );
  }
}