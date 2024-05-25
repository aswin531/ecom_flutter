
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
        // IconButton(
        //     style: IconButton.styleFrom(
        //         backgroundColor: kDefaultIconDarkColor),
        //     onPressed: () {},
        //     icon: Image.asset(
        //       'name',
        //       height: 20,
        //     )),
        IconButton(
            style: IconButton.styleFrom(
                backgroundColor: kDefaultIconLightColor,
                padding: const EdgeInsets.all(5)),
            onPressed: () {},
            icon: Icon(
              Icons.abc,
              color: black,
            )),
        IconButton(
            style: IconButton.styleFrom(
                backgroundColor: kDefaultIconLightColor,
                padding: const EdgeInsets.all(5)),
            onPressed: () {},
            icon: Icon(
              Icons.notifications_active_outlined,
              color: black,
              size: 30,
            )),
      ],
    );
  }
}
