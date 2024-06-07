import 'package:ecom/models/productsmodel.dart';
import 'package:ecom/styles/colors.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ProductItemsCard extends StatelessWidget {
  final Product product;
  ProductItemsCard({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.go('/details', extra: product);
      },
      child: Stack(
        children: [
          Container(
            width: double.infinity,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20), color: greylight),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 5,
                ),
                Center(
                  child: Image.asset(
                    product.image ?? "assets/images/mobilelogo.jpg",
                    width: 200,
                    height: 200,
                  ),
                ),
                Text(product.title ?? "Null"),
                const SizedBox(
                  height: 5,
                ),
                Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List.generate(
                        product.colors!.length,
                        (index) => Container(
                              width: 18,
                              height: 18,
                              margin: const EdgeInsets.all(3),
                              decoration: BoxDecoration(
                                  color: product.colors?[index],
                                  shape: BoxShape.circle),
                            ))),
              ],
            ),
          )
        ],
      ),
    );
  }
}
