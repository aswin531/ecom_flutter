import 'package:ecom/styles/colors.dart';
import 'package:flutter/material.dart';

class DetailAppBar extends StatelessWidget {
  const DetailAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:const EdgeInsets.all(10),
      child: Row(children: [
         IconButton(
            style: IconButton.styleFrom(
                backgroundColor: greylight, padding: const EdgeInsets.all(5)),
            onPressed: () {},
            icon: Icon(
              Icons.grid_view_rounded,
              color: black,
            )),
        IconButton(
            style: IconButton.styleFrom(
                backgroundColor: greylight, padding: const EdgeInsets.all(5)),
            onPressed: () {},
            icon: Icon(
              Icons.notifications,
              color: black,
              size: 30,
            )),
      ],),
    );
  } 
}