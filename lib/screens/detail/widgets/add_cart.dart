import 'package:ecom/models/productsmodel.dart';
import 'package:ecom/styles/colors.dart';
import 'package:flutter/material.dart';

class AddToCart extends StatelessWidget {
  final Product product;
  const AddToCart({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:const EdgeInsets.symmetric(horizontal: 15),
      child: Container(
        height: 85,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(50)),
        color: black,
        padding:const EdgeInsets.all(2),
        alignment: Alignment.center,
        child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [Container(height: 40,decoration: BoxDecoration(border: Border.all(color:white,width: 2)),)],
        ),
      ),
    );
  }
}
