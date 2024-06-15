import 'package:ecom/models/productsmodel.dart';
import 'package:ecom/screens/detail/widgets/discription.dart';
import 'package:ecom/screens/detail/widgets/item_details.dart';
import 'package:ecom/styles/colors.dart';
import 'package:flutter/material.dart';

class TitleDetailScreen extends StatelessWidget {
  final Product product;

  const TitleDetailScreen({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      decoration: BoxDecoration(
        color: white,
        borderRadius: const BorderRadius.only(
          topRight: Radius.circular(40),
          topLeft: Radius.circular(40),
        ),
      ),
      padding: const EdgeInsets.only(left: 20, right: 20, top: 20, bottom: 100),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ItemDetails(product: product),
          DiscrptionSection(description: product.description!)
        ],
      ),
    );
  }
}
