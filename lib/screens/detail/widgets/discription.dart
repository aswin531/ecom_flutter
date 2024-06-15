import 'package:ecom/styles/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class DiscrptionSection extends StatelessWidget {
  final String description;
  const DiscrptionSection({super.key, required this.description});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
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
              "Discription",
              style: TextStyle(color: black),
            ),
            Text(
              "Reviews",
              style: TextStyle(color: black),
            )
          ],
        ),
      const SizedBox(height: 5,),
          const DiscrptionSection(  description: '',)    
      ],
    );
  }
}
