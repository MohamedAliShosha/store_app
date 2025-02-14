import 'package:store_app/helper/api.dart';

class AllCategoriesService {
  Future<List<dynamic>> getAllCategories({required String token}) async {
    // The type of the list this time is dynamic not productModel
    List<dynamic> data = await Api().get(
      url: 'https://fakestoreapi.com/products/categories',
      token: token,
    );

    return data;
  }
}
