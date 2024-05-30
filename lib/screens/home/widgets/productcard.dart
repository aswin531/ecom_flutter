import 'package:ecom/models/productsmodel.dart';
import 'package:ecom/styles/colors.dart';
import 'package:flutter/material.dart';

class ProductItemsCard extends StatelessWidget {
  final Product product;
  const ProductItemsCard({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Stack(
        children: [
          Container(
            width: double.infinity,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20), color: bgRainy),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 15,
                ),
                Center(
                  child: Image.asset(
                    product.image ?? "assets/images/mobilelogo.jpg",
                    width: 120,
                    height: 120,
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
