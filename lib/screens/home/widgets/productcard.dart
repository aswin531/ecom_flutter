import 'package:ecom/models/productsmodel.dart';
import 'package:ecom/routes/servicelocator.dart';
import 'package:ecom/styles/colors.dart';
import 'package:flutter/material.dart';

class ProductItemsCard extends StatelessWidget {
  final Product product;
  ProductItemsCard({super.key, required this.product});
  final NavigationService _navigationService = getIt<NavigationService>();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        _navigationService.navigateTo('/details');
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
                  height: 010,
                ),
                Center(
                  child: Image.asset(
                    product.image ?? "assets/images/mobilelogo.jpg",
                    width: 200,
                    height: 200,
                  ),
                ),
                Text(product.title ?? "Null")
              ],
            ),
          )
        ],
      ),
    );
  }
}
