import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class MyCarousel extends StatelessWidget {
  final Function(int, CarouselPageChangedReason) onChange;
  final int currentSlide;

  const MyCarousel({super.key, required this.onChange, required this.currentSlide});

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      options: CarouselOptions(
          scrollDirection: Axis.horizontal,
          onPageChanged: onChange,
          enableInfiniteScroll: true,
          autoPlay: true,
          viewportFraction: 1.0,
          aspectRatio: 16 / 9,
          enlargeCenterPage: true,
          scrollPhysics: const ClampingScrollPhysics(),
          pageSnapping: true,
          autoPlayCurve: Curves.easeInOutCubic,
          autoPlayAnimationDuration: const Duration(seconds: 2),
          pauseAutoPlayInFiniteScroll: true),
      items: [
        Image.asset(
          'assets/images/nike.jpg',
          fit: BoxFit.cover,
        ),
        Image.asset(
          'assets/images/pixel.jpg',
          fit: BoxFit.cover,
        ),
        Image.asset(
          'assets/images/vk18.jpg',
          fit: BoxFit.cover,
        ),
        Image.asset(
          'assets/images/jj.jpg',
          fit: BoxFit.cover,
        ),
      ],
    );
  }
}

// void main() {
//   runApp(MaterialApp(
//     home: Scaffold(
//       body: Center(
//         child: MyCarousel(currentSlide: ,
//           onChange: (index, reason) {
//             // Handle the page change if necessary
//             // ignore: avoid_print
//             print("Page changed to $index");
//           },
//         ),
//       ),
//     ),
//   ));
// }
