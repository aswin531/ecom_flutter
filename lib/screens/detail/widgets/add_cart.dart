import 'package:ecom/models/productsmodel.dart';
import 'package:ecom/providers/cart_provider.dart';
import 'package:ecom/styles/colors.dart';
import 'package:flutter/material.dart';

class AddToCart extends StatefulWidget {
  final Product product;
  const AddToCart({super.key, required this.product});

  @override
  State<AddToCart> createState() => _AddToCartState();
}

class _AddToCartState extends State<AddToCart> {
  int currentIndex = 1;

  @override
  Widget build(BuildContext context) {
    final provider = CartProvider.of(context);
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Container(
        width: double.infinity,
        height: 80,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: kprimaryColor,
        ),
        padding: const EdgeInsets.symmetric(horizontal: 15),
        alignment: Alignment.center,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              height: 40,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: white, width: 2)),
              child: Row(
                children: [
                  IconButton(
                      onPressed: () {
                        if (currentIndex != 1) {
                          setState(() {
                            currentIndex--;
                          });
                        }
                      },
                      icon: Icon(
                        Icons.remove,
                        color: white,
                      )),
                  const SizedBox(
                    width: 5,
                  ),
                  Text(
                    currentIndex.toString(),
                    style: TextStyle(color: white),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  IconButton(
                      onPressed: () {
                        setState(() {
                          currentIndex++;
                        });
                      },
                      icon: Icon(
                        Icons.add,
                        color: white,
                      ))
                ],
              ),
            ),
            Container(
              height: 45,
              decoration: BoxDecoration(
                color: white,
                borderRadius: BorderRadius.circular(30),
              ),
              alignment: Alignment.center,
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: IconButton(
                  onPressed: () {
                    provider.toggleFavourite(widget.product);
                    const snackbar = SnackBar(
                      dismissDirection: DismissDirection.horizontal,
                      backgroundColor: green,
                      elevation: 5,
                      behavior: SnackBarBehavior.floating,
                      content: Text(
                        "Added to Cart",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: 25),
                      ),
                      duration: Duration(seconds: 1),
                    );
                    ScaffoldMessenger.of(context).showSnackBar(snackbar);
                  },
                  icon: Icon(
                    Icons.add_shopping_cart_rounded,
                    color: bgThunderstorm,
                    size: 30,
                    semanticLabel: "Add to Cart",
                  )),
            )
          ],
        ),
      ),
    );
  }
}
