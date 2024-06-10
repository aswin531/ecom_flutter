import 'package:ecom/models/productsmodel.dart';
import 'package:ecom/screens/home/widgets/productcard.dart';
import 'package:ecom/styles/colors.dart';
import 'package:ecom/styles/responsive.dart';
import 'package:ecom/widgets/customtext.dart';
import 'package:flutter/material.dart';

class HomeGridviewItems extends StatelessWidget {
  const HomeGridviewItems({super.key});

  @override
  Widget build(BuildContext context) {
    final responsive = Responsive(context);
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CustomText(
              data: "Hot Deals",
              fw: FontWeight.w800,
              size: responsive.fontSize(6),
            ),
            CustomText(
              data: "See all",
              fw: FontWeight.w500,
              size: responsive.fontSize(4),
              color: black,
            ),
          ],
        ),
        const SizedBox(height: 10),
        GridView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: responsive.gridCount(),
              childAspectRatio: 0.85,
              mainAxisSpacing: 10),
          itemCount: products.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(5.0),
              child: ProductItemsCard(product: products[index]),
            );
          },
        )
      ],
    );
  }
}
