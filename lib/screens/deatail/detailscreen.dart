import 'package:ecom/models/productsmodel.dart';
import 'package:ecom/screens/deatail/widgets/detailappbar.dart';
import 'package:ecom/styles/colors.dart';
import 'package:flutter/material.dart';

class DetailScreen extends StatelessWidget {
  final Product product;
  const DetailScreen({super.key,required this.product});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: unSelectedGrey,
      body: Column(
        children: [
          Container(
            color: black,
          ),
          const DetailAppBar(),
        ],
      ),
    );
  }
}
