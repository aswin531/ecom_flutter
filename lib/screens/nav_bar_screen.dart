import 'package:ecom/providers/bottomnavbarprovider.dart';
import 'package:ecom/screens/cart/cartscreen.dart';
import 'package:ecom/screens/extras/extrascreen.dart';
import 'package:ecom/screens/favourites/favourite.dart';
import 'package:ecom/screens/home/homescreen.dart';
import 'package:ecom/screens/profile/profilescreen.dart';
import 'package:ecom/styles/colors.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class BottomNavBar extends StatelessWidget {
  BottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<BottomNavBarProvider>(
      builder: (context, provider, child) {
        return Scaffold(
            floatingActionButton: FloatingActionButton(
              onPressed: () {
                provider.setCurrentIndex(2);
              },
              backgroundColor: kprimaryColor,
              shape: const CircleBorder(),
              child: Icon(
                Icons.home_filled,
                color: white,
              ),
            ),
            floatingActionButtonLocation:
                FloatingActionButtonLocation.centerDocked,
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
                        provider.setCurrentIndex(0);
                      },
                      icon: Icon(
                        Icons.grid_view_outlined,
                        size: 30,
                        color: provider.currentIndex == 0
                            ? kprimaryColor
                            : bgThunderstorm,
                      )),
                  IconButton(
                      onPressed: () {
                        provider.setCurrentIndex(1);
                      },
                      icon: Icon(
                        Icons.favorite_border_sharp,
                        size: 30,
                        color: provider.currentIndex == 1
                            ? kprimaryColor
                            : bgThunderstorm,
                      )),
                  const SizedBox(
                    width: 20,
                  ),
                  IconButton(
                      onPressed: () {
                        provider.setCurrentIndex(3);
                      },
                      icon: Icon(
                        Icons.shopping_cart_outlined,
                        size: 30,
                        color: provider.currentIndex == 3
                            ? kprimaryColor
                            : bgThunderstorm,
                      )),
                  IconButton(
                      onPressed: () {
                        provider.setCurrentIndex(4);
                      },
                      icon: Icon(
                        Icons.person,
                        size: 30,
                        color: provider.currentIndex == 4
                            ? kprimaryColor
                            : bgThunderstorm,
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
            body: IndexedStack(
              index: provider.currentIndex,
              children: const [
                ExtraScreen(),
                FavouriteScreen(),
                HomeScreen(),
                CartScreen(),
                ProfileScreen()
              ],
            ));
      },
    );
  }
}
