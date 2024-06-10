import 'package:carousel_slider/carousel_options.dart';
import 'package:ecom/screens/home/widgets/carousel.dart';
import 'package:ecom/screens/home/widgets/category.dart';
import 'package:ecom/screens/home/widgets/gridview.dart';
import 'package:ecom/screens/home/widgets/homecustomappbar.dart';
import 'package:ecom/screens/home/widgets/searchbar.dart';
import 'package:ecom/styles/colors.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentSlider = 0;
  void onPageChanged(int index, CarouselPageChangedReason reason) {
    setState(() {
      currentSlider = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        toolbarHeight: 0,
      ),
      backgroundColor: offWhite,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const CustomAppBar(),
              const SizedBox(height: 15),
              const CustomSearchBar(),
              const SizedBox(height: 20),
              MyCarousel(
                onChange: onPageChanged,
                currentSlide: currentSlider,
              ),
              // ImageSlider(
              //     onChange: (value) {
              //       setState(() {
              //         currentSlider = value;
              //       });
              //     },
              //     currentSlide: currentSlider),
              const SizedBox(height: 20),
              const Category(),
              // const SizedBox(height: 5),
              const HomeGridviewItems()
            ],
          ),
        ),
      ),
    );
  }
}
