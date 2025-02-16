import 'package:store_app/helper/api.dart';
import 'package:store_app/models/product_model.dart';

class AllProductsService {
  Future<List<ProductModel>> getAllProducts() async {
    List<dynamic> data = await Api().get(
      url: 'https://fakestoreapi.com/products',
    );

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

// The used get method:
// Future<dynamic> get({required String url, @required String? token}) async {
//     // We created a headers map to store our token if it exists.
//     // if token exists we add an Auth header with the token value.

//     Map<String, String> headers =
//         {}; //  headers are key-value pairs sent between the client and the server.

//     if (token != null) {
//       headers.addAll({'Authorization': 'Bearer $token'});
//     }
//     http.Response response = await http.get(Uri.parse(url), headers: headers);

//     if (response.statusCode == 200) {
//       return jsonDecode(response.body);
//     } else {
//       throw Exception(
//           'there is a problem with status code ${response.statusCode}');
//     }
//   }
