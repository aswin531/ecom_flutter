import 'package:carousel_slider/carousel_slider.dart';
import 'package:ecom/styles/colors.dart';
import 'package:flutter/material.dart';

class MyCarousel extends StatelessWidget {
  final Function(int, CarouselPageChangedReason) onChange;
  final int currentSlide;

  const MyCarousel(
      {super.key, required this.onChange, required this.currentSlide});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          height: 240,
          width: double.infinity,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: CarouselSlider(
              options: CarouselOptions(
                height: 240,
                scrollDirection: Axis.horizontal,
                onPageChanged: onChange,
                enableInfiniteScroll: true,
                autoPlay: true,
                viewportFraction: 1.0,
                aspectRatio: 16 / 9,
                enlargeCenterPage: true,
                scrollPhysics: const BouncingScrollPhysics(),
                autoPlayCurve: Curves.decelerate,
                autoPlayAnimationDuration: const Duration(seconds: 4),
                autoPlayInterval: const Duration(seconds: 4),
                pauseAutoPlayOnTouch: true,
              ),
              items: [
                Image.asset('assets/images/nikecarousel.jpg', fit: BoxFit.fill),
                Image.asset(
                  'assets/images/vk18.jpg',
                  fit: BoxFit.cover,
                ),
                Image.asset(
                  'assets/images/casio.png',
                  fit: BoxFit.cover,
                ),
                Image.asset(
                  'assets/images/pixel7.jpg',
                  fit: BoxFit.fill,
                ),
                Image.asset(
                  'assets/images/jj.jpg',
                  fit: BoxFit.cover,
                ),
              ],
            ),
          ),
        ),
        Positioned.fill(
          bottom: 10,
          child: Align(
            alignment: Alignment.bottomCenter,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                5,
                (index) => AnimatedContainer(
                  duration: const Duration(milliseconds: 300),
                  width: currentSlide == index ? 15 : 8,
                  height: 8,
                  margin: const EdgeInsets.only(right: 3),
                  decoration: BoxDecoration(
                    color: currentSlide == index
                        ? Colors.white
                        : Colors.transparent,
                    border: Border.all(color: bgFog),
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
