import 'package:ecom/models/productsmodel.dart';
import 'package:ecom/styles/colors.dart';
import 'package:flutter/material.dart';

class ItemDetails extends StatelessWidget {
  final Product product;
  const ItemDetails({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          product.title!,
          style: const TextStyle(fontWeight: FontWeight.w800, fontSize: 25),
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              " \$${product.price!}",
              style: const TextStyle(fontWeight: FontWeight.w800, fontSize: 25),
            ),
            const SizedBox(height: 10),
            Row(
              children: [
                Container(
                  width: 50,
                  height: 23,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: richCoral),
                  alignment: Alignment.center,
                  padding: const EdgeInsets.symmetric(),
                  child: Row(
                    children: [
                      Icon(
                        Icons.star,
                        size: 14,
                        color: white,
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Text(
                        product.rate.toString(),
                        style: const TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 13),
                      ),
                    ],
                  ),
                )
              ],
            )
          ],
        )
      ],
    );
  }
}
