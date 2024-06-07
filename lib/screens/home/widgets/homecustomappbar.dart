import 'package:ecom/styles/colors.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(
            style: IconButton.styleFrom(
                backgroundColor: greylight, padding: const EdgeInsets.all(5)),
            onPressed: () {},
            icon: Icon(
              Icons.grid_view_rounded,
              color: bgThunderstorm,
            )),
        IconButton(
            style: IconButton.styleFrom(
                backgroundColor: greylight, padding: const EdgeInsets.all(5)),
            onPressed: () {},
            icon: Icon(
              Icons.notifications,
              color: bgThunderstorm,
              size: 30,
            )),
      ],
    );
  }
}
