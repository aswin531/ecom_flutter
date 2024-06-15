import 'package:ecom/models/productsmodel.dart';
import 'package:ecom/styles/colors.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ProductItemsCard extends StatelessWidget {
  final Product product;
  const ProductItemsCard({
    super.key,
    required this.product,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.push('/details', extra: product);
      },
      child: Stack(
        children: [
          Container(
            width: double.infinity,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20), color: greylight),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 5,
                ),
                Flexible(
                  flex: 3,
                  child: Center(
                    child: Hero(
                      tag: '${product.primaryImage}_0',
                      child: Image.asset(
                        product.primaryImage,
                        width: 200,
                        height: 200,
                      ),
                    ),
                  ),
                ),
                Column(
                  children: [
                    Text(product.title ?? "Null"),
                    const SizedBox(
                      height: 5,
                    ),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: List.generate(
                            product.colors!.length,
                            (index) => Container(
                                  width: 18,
                                  height: 18,
                                  margin: const EdgeInsets.all(3),
                                  decoration: BoxDecoration(
                                      color: product.colors?[index],
                                      shape: BoxShape.circle),
                                ))),
                    const SizedBox(
                      height: 10,
                    )
                  ],
                )
              ],
            ),
          ),
          Positioned(
              child: Align(
            alignment: Alignment.topRight,
            child: Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                  color: transparent,
                  borderRadius: const BorderRadius.only(
                      topRight: Radius.circular(20),
                      bottomLeft: Radius.circular(20))),
              child: GestureDetector(
                onTap: () {},
                child: Icon(
                  Icons.favorite,
                  color: white,
                  size: 22,
                ),
              ),
            ),
          ))
        ],
      ),
    );
  }
}
