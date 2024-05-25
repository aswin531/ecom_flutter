import 'package:ecom/styles/colors.dart';
import 'package:flutter/material.dart';

class ImageSlider extends StatelessWidget {
  final Function(int) onChange;
  final int currentSlide;
  const ImageSlider(
      {super.key, required this.onChange, required this.currentSlide});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          height: 220,
          width: double.infinity,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: PageView(
              scrollDirection: Axis.horizontal,
              allowImplicitScrolling: true,
              onPageChanged: onChange,
              physics: const ClampingScrollPhysics(),
              children: [
                Image.asset(
                  'assets/images/nike.jpg',
                  fit: BoxFit.fill,
                ),
                Image.asset(
                  'assets/images/jj.jpg',
                  fit: BoxFit.fill,
                ),
                Image.asset(
                  'assets/images/vk18.jpg',
                  fit: BoxFit.fill,
                ),
                Image.asset(
                  'assets/images/pixel7.jpg',
                  fit: BoxFit.fill,
                ),
              ],
            ),
          ),
        ),
        Positioned.fill(
          bottom: 10,
            child: Align(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(
                5,
                (index) => AnimatedContainer(
                      duration: const Duration(microseconds: 300),
                      width: currentSlide == index ? 15 : 8,
                      height: 8,
                      margin: const EdgeInsets.only(right: 3),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10)),
                      color: currentSlide == index ? black : transparent,
                    )),
          ),
        ))
      ],
    );
  }
}
