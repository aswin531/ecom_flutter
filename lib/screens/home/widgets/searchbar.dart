import 'package:ecom/styles/colors.dart';
import 'package:flutter/material.dart';

class CustomSearchBar extends StatelessWidget {
  const CustomSearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 1),
      child: Container(
        height: 55,
        width: double.infinity,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10), color: greylight),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: Icon(
                Icons.search,
                color: kDefaultIconDarkColor,
                size: 30,
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            const Flexible(
                flex: 4,
                child: TextField(
                  decoration: InputDecoration(
                      hintText: "Find Here ...", border: InputBorder.none),
                )),
            Container(
              height: 25,
              width: 1.5,
              color: grey,
            ),
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.tune,
                  color: grey,
                ))
          ],
        ),
      ),
    );
  }
}
