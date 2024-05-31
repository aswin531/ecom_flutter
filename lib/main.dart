import 'package:ecom/routes/approuter.dart';
import 'package:ecom/routes/servicelocator.dart';
import 'package:ecom/screens/nav_bar_screen.dart';
import 'package:flutter/material.dart';

void main() {
  setupLocator();
  getIt<NavigationService>().router = router;
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      routerConfig: router,
    );
  }
}
