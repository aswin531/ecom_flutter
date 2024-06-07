import 'package:ecom/models/productsmodel.dart';
import 'package:ecom/screens/deatail/detailscreen.dart';
import 'package:ecom/screens/home/homescreen.dart';
import 'package:go_router/go_router.dart';

final GoRouter router = GoRouter(routes: [
  GoRoute(
    path: '/',
    builder: (context, state) => const HomeScreen(),
  ),
  GoRoute(
    path: '/details',
    builder: (context, state) {
      // Retrieve the product object
      final Product product = state.extra as Product;
      return DetailScreen(product: product);
    },
  ),
]);
