import 'package:ecom/models/category.dart';
import 'package:flutter/material.dart';

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

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
                        fit: BoxFit.cover,
                        // filterQuality: FilterQuality.high
                      )),
                ),
                const SizedBox(
                  height: 5,
                ),
                Text(
                  categories[index].title,
                  style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),
                )
              ],
            );
          },
          separatorBuilder: (context, index) {
            return const Divider(
              thickness: 5,
            );
          },
          itemCount: categories.length),
    );
  }
}
