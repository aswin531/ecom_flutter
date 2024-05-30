import 'package:ecom/models/productsmodel.dart';
import 'package:ecom/screens/home/widgets/category.dart';
import 'package:ecom/screens/home/widgets/gridview.dart';
import 'package:ecom/screens/home/widgets/homecustomappbar.dart';
import 'package:ecom/screens/home/widgets/searchbar.dart';
import 'package:ecom/screens/home/widgets/slider.dart';
import 'package:ecom/styles/colors.dart';
import 'package:ecom/widgets/customtext.dart';
import 'package:flutter/material.dart';

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
                // Row(
                //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //   children: [
                //     CustomText(
                //       data: "Hot Deals",
                //       fw: FontWeight.w800,
                //       size: 25,
                //     ),
                //     CustomText(
                //       data: "See all",
                //       fw: FontWeight.w500,
                //       size: 16,
                //       color: black,
                //     ),
                //   ],
                // ),
                // const SizedBox(
                //   height: 10,
                // ),
                // GridView.builder(
                //   itemCount: products.length,
                //   shrinkWrap: true,
                //   physics: const NeverScrollableScrollPhysics(),
                //   gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                //       crossAxisCount: 2),
                //   itemBuilder: (context, index) {
                //     return const Card();
                //   },
                // )
              ],
            ),
          ),
        ),
      ),
    );
  }
}



 // MyCarousel(
                //   onChange: (p0, p1) {},
                //   currentSlide: currentSlider,
                // )