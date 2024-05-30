import 'package:ecom/screens/home/widgets/category.dart';
import 'package:ecom/screens/home/widgets/gridviewitems.dart';
import 'package:ecom/screens/home/widgets/homecustomappbar.dart';
import 'package:ecom/screens/home/widgets/searchbar.dart';
import 'package:ecom/screens/home/widgets/slider.dart';
import 'package:ecom/styles/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentSlider = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const CustomAppBar(),
                const SizedBox(height: 15),
                const CustomSearchBar(),
                const SizedBox(height: 20),
                ImageSlider(
                    onChange: (value) {
                      setState(() {
                        currentSlider = value;
                      });
                    },
                    currentSlide: currentSlider),
                const SizedBox(height: 20),
                const Category(),
                const SizedBox(height: 10),
                const HomeGridviewItems()

                // MyCarousel(
                //   onChange: (p0, p1) {},
                //   currentSlide: currentSlider,
                // )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
