import 'package:store_app/helper/api.dart';
import 'package:store_app/models/product_model.dart';

class CategoriesService {
  Future<List<ProductModel>> getCategoriesProduct(
      {required String categoryName}) async {
    List<dynamic> data = await Api()
        .get(url: 'https://fakestoreapi.com/products/category/$categoryName');

    List<ProductModel> productList =
        []; // An empty list to store the products that return from the API

    for (int i = 0; i < data.length; i++) {
      productList.add(
        ProductModel.fromJson(data[
            i]), // FromJson  is a method that convert json data to ProductModel object
      );
    }

    return productList;
  }
}
