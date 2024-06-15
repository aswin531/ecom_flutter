import 'package:ecom/models/productsmodel.dart';
import 'package:ecom/providers/current_image_provider.dart';
import 'package:ecom/providers/pro_detail_provider.dart';
import 'package:ecom/screens/detail/widgets/add_cart.dart';
import 'package:ecom/screens/detail/widgets/detailappbar.dart';
import 'package:ecom/screens/detail/widgets/imageslider.dart';
import 'package:ecom/screens/detail/widgets/title_detail_screen.dart';
import 'package:ecom/styles/colors.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class DetailScreen extends StatelessWidget {
  final Product product;
  const DetailScreen({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: offWhite,
      floatingActionButton: AddToCart(product: product),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButtonAnimator: FloatingActionButtonAnimator.scaling,
      body: SafeArea(
        child: Column(
          children: [
            Container(
              color: black,
            ),
            const DetailAppBar(),
            Consumer<ProductDetailProvider>(
              builder: (context, productDetailProvider, child) {
                return Consumer<DetaiScreenProvider>(
                  builder: (context, detailScreenProvider, child) {
                    return DetailImageSlider(
                      onChange: (index) {
                        detailScreenProvider.setCurrentImage(index);
                      },
                      images: product.images ?? [],
                    );
                  },
                );
              },
            ),
            const SizedBox(
              height: 10,
            ),
            Expanded(
              child: TitleDetailScreen(product: product),
            ),
          ],
        ),
      ),
    );
  }
}
