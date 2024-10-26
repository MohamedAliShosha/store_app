import 'package:store_app/helper/api.dart';
import 'package:store_app/models/product_model.dart';

class AddProduct {
  Future<ProductModel> addProduct(
      {required int id, required String title, required String price}) async {
    Map<String, dynamic> data = await Api().post(
        url: 'https://fakestoreapi.com/products',
        body: {'id': id, 'title': title, 'price': price});

    return ProductModel.fromJson(data);
  }
}
