import 'package:ecom/providers/bottomnavbarprovider.dart';
import 'package:ecom/providers/cart_provider.dart';
import 'package:ecom/providers/current_image_provider.dart';
import 'package:ecom/providers/pro_detail_provider.dart';
import 'package:ecom/routes/approuter.dart';
import 'package:ecom/styles/theme.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

// void main() {
//   runApp(multiPro(
//      ChangeNotifierProvider(
//       create: (context) => BottomNavBarProvider(),
//       child: const MyApp(),
//     ),
//   ));
// }
void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => BottomNavBarProvider()),
        ChangeNotifierProvider(create: (_) => ProductDetailProvider()),
        ChangeNotifierProvider(create: (_) => DetaiScreenProvider()),
        ChangeNotifierProvider(create: (_) => CartProvider()),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: CustomTheme.light,
      // theme: ThemeData(
      //   colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      //   useMaterial3: true,
      // ),
      routerConfig: router,
    );
  }
}
