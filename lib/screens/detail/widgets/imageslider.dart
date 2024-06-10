import 'package:ecom/styles/colors.dart';
import 'package:flutter/material.dart';

class DetailImageSlider extends StatelessWidget {
  final Function(int) onChange;
  final String image;
  const DetailImageSlider(
      {super.key, required this.onChange, required this.image});

  @override
  Widget build(BuildContext context) {
    int currentImage = 0;
    return SizedBox(
      height: 250,
      child: Column(
        children: [
          Expanded(
            child: PageView.builder(
              itemBuilder: (context, index) {
                return Image.asset(image);
              },
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(
                5,
                (index) => AnimatedContainer(
                      duration: const Duration(microseconds: 300),
                      width: currentImage == index ? 15 : 8,
                      height: 8,
                      margin: const EdgeInsets.only(right: 3),
                      decoration: BoxDecoration(
                          color: currentImage == index ? black : transparent,
                          border: Border.all(color: black),
                          borderRadius: BorderRadius.circular(10)),
                    )),
          ),
        ],
      ),
    );
  }
}
