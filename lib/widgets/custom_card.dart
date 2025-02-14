import 'package:flutter/material.dart';
import 'package:store_app/models/product_model.dart';
import 'package:store_app/pages/update_product_page.dart';

class CustomCard extends StatelessWidget {
  const CustomCard({
    required this.product,
    super.key,
  });

  final ProductModel product;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(
          context,
          UpdateProductPage.id,
          arguments:
              product, // هبعت بيانات  المنتج القديمه اللي هجتاج اعملها  تحديث قبل متتحدث
        );
      },
      child: Stack(
        clipBehavior:
            Clip.none, // Prevents the stack from clipping its children

        children: [
          Container(
            // The last widget in the stack => The next widget will be above the container
            decoration: BoxDecoration(boxShadow: [
              BoxShadow(
                blurRadius: 40, // Used to  set the blur effect of the shadow
                color: Colors.grey.withOpacity(.2),
                spreadRadius: 0, //  Used to set the spread of the shadow
                offset: const Offset(
                    10, 10), // Used to set the offset of the shadow
              )
            ]),
            child: Card(
                elevation: 10,
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        product.title.substring(0, 6),
                        style: const TextStyle(
                          fontSize: 16,
                          color: Colors.grey,
                        ),
                      ),
                      const SizedBox(
                        height: 3,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            r'$' '${product.price.toString()}',
                            style: const TextStyle(
                              fontSize: 16,
                              color: Colors.black,
                            ),
                          ),
                          const Icon(
                            Icons.favorite,
                            color: Colors.red,
                          ),
                        ],
                      )
                    ],
                  ),
                )),
          ),
          Positioned(
            right: 32,
            top: -60,
            // bottom: 85, // Move the image from the bottom to the top

            child: Image.network(
              product.image,
              height: 100,
              width: 100,
            ),
          ),
        ],
      ),
    );
  }
}
