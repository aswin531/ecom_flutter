import 'package:ecom/screens/cart/cartscreen.dart';
import 'package:ecom/screens/favourites/favourite.dart';
import 'package:ecom/screens/home/homescreen.dart';
import 'package:ecom/styles/colors.dart';
import 'package:flutter/material.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int currentIndex = 2;
  List screens = const [
    Scaffold(),
    FavouriteScreen(),
    HomeScreen(),
    CartScreen(),
    Scaffold(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            currentIndex = 2;
          });
        },
        backgroundColor: kprimaryColor,
        shape: const CircleBorder(),
        child: Icon(
          Icons.home_filled,
          color: white,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButtonAnimator: FloatingActionButtonAnimator.scaling,
      bottomNavigationBar: BottomAppBar(
        elevation: 1,
        height: 60,
        color: white,
        shape: const CircularNotchedRectangle(),
        notchMargin: 10,
        clipBehavior: Clip.antiAliasWithSaveLayer,
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
                onPressed: () {
                  setState(() {
                    currentIndex = 0;
                  });
                },
                icon: Icon(
                  Icons.grid_view_outlined,
                  size: 30,
                  color:
                      currentIndex == 0 ? kprimaryColor : kDefaultIconDarkColor,
                )),
            IconButton(
                onPressed: () {
                  setState(() {
                    currentIndex = 1;
                  });
                },
                icon: Icon(
                  Icons.favorite_border_sharp,
                  size: 30,
                  color:
                      currentIndex == 1 ? kprimaryColor : kDefaultIconDarkColor,
                )),
            const SizedBox(
              width: 20,
            ),
            IconButton(
                onPressed: () {
                  setState(() {
                    currentIndex = 3;
                  });
                },
                icon: Icon(
                  Icons.shopping_cart_outlined,
                  size: 30,
                  color:
                      currentIndex == 3 ? kprimaryColor : kDefaultIconDarkColor,
                )),
            IconButton(
                onPressed: () {
                  setState(() {
                    currentIndex = 4;
                  });
                },
                icon: Icon(
                  Icons.person,
                  size: 30,
                  color:
                      currentIndex == 4 ? kprimaryColor : kDefaultIconDarkColor,
                )),
            // IconButton(
            //     onPressed: () {},
            //     icon: Icon(
            //       Icons.grid_view_outlined,
            //       size: 25,
            //       color: cutterIndex == 4 ? kprimaryColor : unSelectedGrey,
            //     ))
          ],
        ),
      ),
      body: screens[currentIndex],
    );
  }
}
