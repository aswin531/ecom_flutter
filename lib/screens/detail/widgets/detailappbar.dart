import 'package:ecom/styles/colors.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class DetailAppBar extends StatelessWidget {
  const DetailAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          IconButton(
              alignment: Alignment.topLeft,
              style: IconButton.styleFrom(
                  backgroundColor: white, padding: const EdgeInsets.all(5)),
              onPressed: () {
                context.go('/');
              },
              icon: Icon(
                Icons.arrow_back_ios_rounded,
                color: bgThunderstorm,
              )),
          const Spacer(),
          IconButton(
              style: IconButton.styleFrom(
                  //backgroundColor: greylight,
                  padding: const EdgeInsets.all(5)),
              onPressed: () {},
              icon: Icon(
                Icons.favorite_outline_rounded,
                color: bgThunderstorm,
                size: 30,
              )),
          IconButton(
              style: IconButton.styleFrom(
                  //backgroundColor: greylight,
                  padding: const EdgeInsets.all(5)),
              onPressed: () {},
              icon: Icon(
                Icons.share_outlined,
                color: bgThunderstorm,
                size: 30,
              )),
        ],
      ),
    );
  }
}
