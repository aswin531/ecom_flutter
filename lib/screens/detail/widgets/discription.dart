import 'package:ecom/models/productsmodel.dart';
import 'package:ecom/styles/colors.dart';
import 'package:flutter/material.dart';

class DiscrptionSection extends StatelessWidget {
  final String description;
  final Product product;
  const DiscrptionSection(
      {super.key, required this.description, required this.product});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 5,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              width: 130,
              height: 40,
              decoration: BoxDecoration(
                  color: kprimaryColor,
                  borderRadius: BorderRadius.circular(20)),
              alignment: Alignment.center,
              child: Text(
                "Discription",
                style: TextStyle(color: white, fontWeight: FontWeight.w600),
              ),
            ),
            Text(
              "Specifications",
              style: TextStyle(color: black),
            ),
            Text(
              "Reviews",
              style: TextStyle(color: black),
            )
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        Text(description, style: const TextStyle(color: Colors.black)),
      ],
    );
  }
}
