import 'package:ecom/models/productsmodel.dart';
import 'package:ecom/styles/colors.dart';
import 'package:ecom/styles/custom_text_style.dart';
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
                style: CustomTextStyles.buttonLabel(context),
              ),
            ),
            Text(
              "Specifications",
              style: CustomTextStyles.subtitle(context),
            ),
            Text(
              "Reviews",
              style: CustomTextStyles.subtitle(context),
            )
          ],
        ),
        const SizedBox(
          height: 20,
        ),
        Text(description, style: CustomTextStyles.bodyText(context)),
      ],
    );
  }
}
