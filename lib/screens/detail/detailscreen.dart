import 'package:ecom/models/productsmodel.dart';
import 'package:ecom/screens/detail/widgets/detailappbar.dart';
import 'package:ecom/screens/detail/widgets/imageslider.dart';
import 'package:ecom/styles/colors.dart';
import 'package:flutter/material.dart';

class DetailScreen extends StatefulWidget {
  final Product product;
  const DetailScreen({super.key, required this.product});

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  int currentImage = 0;
  //int currentSlide = 0;
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
            DetailImageSlider(
                onChange: (index) {
                  setState(() {
                    currentImage = index;
                  });
                },
                image: widget.product.image!),
            // Row(
            //   mainAxisAlignment: MainAxisAlignment.center,
            //   children: List.generate(
            //       5,
            //       (index) => AnimatedContainer(
            //             duration: const Duration(microseconds: 300),
            //             width: currentImage == index ? 15 : 8,
            //             height: 8,
            //             margin: const EdgeInsets.only(right: 3),
            //             decoration: BoxDecoration(
            //                 color: currentImage == index ? black : transparent,
            //                 border: Border.all(color: black),
            //                 borderRadius: BorderRadius.circular(10)),
            //           )),
            // ),
          ],
        ),
      ),
    );
  }
}
