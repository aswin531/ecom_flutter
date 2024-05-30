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
        Container(
          height: 400,
          child: GridView.builder(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2),
            itemBuilder: (context, index) {
              return Card();
            },
          ),
        )
      ],
    );
  }
}
