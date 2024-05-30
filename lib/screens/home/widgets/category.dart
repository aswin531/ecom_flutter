import 'package:ecom/models/category.dart';
import 'package:flutter/material.dart';

class Category extends StatelessWidget {
  const Category({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150,
      child: ListView.separated(
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return Column(
              children: [
                Container(
                  height: 65,
                  width: 65,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        image: AssetImage(categories[index].image),
                        fit: BoxFit.fitWidth,
                        // filterQuality: FilterQuality.high
                      )),
                ),
                const SizedBox(
                  height: 5,
                ),
                Text(
                  categories[index].title,
                  style: const TextStyle(
                      fontSize: 16, fontWeight: FontWeight.bold),
                )
              ],
            );
          },
          separatorBuilder: (context, index) => const SizedBox(
                width: 20,
              ),
          itemCount: categories.length),
    );
  }
}
