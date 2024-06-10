import 'package:ecom/models/productsmodel.dart';
import 'package:ecom/providers/pro_detail_provider.dart';
import 'package:ecom/screens/detail/widgets/detailappbar.dart';
import 'package:ecom/screens/detail/widgets/imageslider.dart';
import 'package:ecom/screens/detail/widgets/title_detail_screen.dart';
import 'package:ecom/styles/colors.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class DetailScreen extends StatefulWidget {
  final Product product;
  const DetailScreen({super.key, required this.product});

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  int currentImage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: offWhite,
      body: SafeArea(
        child: Column(
          children: [
            Container(
              color: black,
            ),
            const DetailAppBar(),
            Consumer<ProductDetailProvider>(
                builder: (context, provider, child) {
              return DetailImageSlider(
                onChange: (index) {
                  setState(() {
                    currentImage = index;
                  });
                },
                images: widget.product.images ?? [],
              );
            }),
            const SizedBox(
              height: 10,
            ),
            Expanded(
              child: TitleDetailScreen(product: widget.product),
            ),
          ],
        ),
      ),
    );
  }
}
