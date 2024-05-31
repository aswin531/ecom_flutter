import 'package:ecom/screens/deatail/widgets/detailappbar.dart';
import 'package:ecom/styles/colors.dart';
import 'package:flutter/material.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: unSelectedGrey,
      body: Column(children: [
        Container(color: black,),
        DetailAppBar(),
      ],),
    );
  }
}
