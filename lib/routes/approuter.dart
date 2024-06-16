import 'package:ecom/models/productsmodel.dart';
import 'package:ecom/screens/cart/cartscreen.dart';
import 'package:ecom/screens/detail/detailscreen.dart';
import 'package:ecom/screens/extras/extrascreen.dart';
import 'package:ecom/screens/favourites/favourite.dart';
import 'package:ecom/screens/nav_bar_screen.dart';
import 'package:ecom/screens/profile/profilescreen.dart';
import 'package:go_router/go_router.dart';

final GoRouter router = GoRouter(routes: [
  GoRoute(
    path: '/',
      builder: (context, state) =>const  BottomNavBar(),
  ),
  GoRoute(
      path: '/cart',
      name: 'cart',
      builder: (context, state) => const CartScreen(),
    ),

  GoRoute(
    path: '/details',
    name: 'details',
    builder: (context, state) {
      // Retrieve the product object
      final Product product = state.extra as Product;
      return DetailScreen(product: product);
    },
  ),


   GoRoute(
      path: '/extras',
      name: 'extras',
      builder: (context, state) => const ExtraScreen(),
    ),
    GoRoute(
      path: '/favourites',
      name: 'favourites',
      builder: (context, state) => const FavouriteScreen(),
    ),
    GoRoute(
      path: '/profile',
      name: 'profile',
      builder: (context, state) => const ProfileScreen(),
    ),
]);
