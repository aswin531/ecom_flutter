import 'package:ecom/models/productsmodel.dart';
import 'package:ecom/screens/home/widgets/productcard.dart';
import 'package:ecom/styles/colors.dart';
import 'package:ecom/widgets/customtext.dart';
import 'package:flutter/material.dart';

class HomeGridviewItems extends StatelessWidget {
  const HomeGridviewItems({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CustomText(
              data: "Hot Deals",
              fw: FontWeight.w800,
              size: 25,
            ),
            CustomText(
              data: "See all",
              fw: FontWeight.w500,
              size: 16,
              color: black,
            ),
          ],
        ),
        const SizedBox(height: 10),
        GridView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2),
          itemCount: products.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: ProductItemsCard(product: products[index]),
            );
          },
        )
      ],
    );
  }
}
