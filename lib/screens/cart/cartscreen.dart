import 'package:ecom/models/productsmodel.dart';
import 'package:ecom/providers/cart_provider.dart';
import 'package:ecom/styles/colors.dart';
import 'package:ecom/styles/custom_text_style.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  void navigateToDetailScreen(BuildContext context, Product product) {
    context.pushNamed('details', extra: product);
  }

  @override
  Widget build(BuildContext context) {
    final provider = CartProvider.of(context);
    productQuantity(IconData icon, int index) {
      return GestureDetector(
        onTap: () {
          setState(() {
            icon == Icons.add
                ? provider.incrementQtn(index)
                : provider.decrementQtn(index);
          });
        },
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: Text("My Cart", style: CustomTextStyles.title(context)),
        backgroundColor: kprimaryColor,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SafeArea(
          child: Column(
            children: [
              Expanded(
                child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: provider.cart.length,
                  itemBuilder: (context, index) {
                    final cartItem = provider.cart[index];
                    return Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 5),
                      child: GestureDetector(
                        onTap: () {
                          navigateToDetailScreen(context, cartItem);
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            color: white,
                            borderRadius: BorderRadius.circular(20),
                            boxShadow: const [
                              BoxShadow(
                                color: Colors.black12,
                                blurRadius: 10,
                                spreadRadius: 1,
                              ),
                            ],
                          ),
                          padding: const EdgeInsets.all(15),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                height: 100,
                                width: 90,
                                decoration: BoxDecoration(
                                  color: greylight,
                                  borderRadius: BorderRadius.circular(15),
                                  image: DecorationImage(
                                    image: AssetImage(cartItem.primaryImage),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              const SizedBox(width: 15),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      cartItem.title!,
                                      style: CustomTextStyles.title(context),
                                    ),
                                    const SizedBox(height: 5),
                                    Row(
                                      children: [
                                        Container(
                                          width: 50,
                                          height: 23,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(15),
                                            color: green,
                                          ),
                                          alignment: Alignment.center,
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 5),
                                          child: Row(
                                            children: [
                                              Icon(
                                                Icons.star,
                                                size: 14,
                                                color: white,
                                              ),
                                              const SizedBox(width: 5),
                                              Text(
                                                cartItem.rate.toString(),
                                                style: const TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 13,
                                                  color: Colors.white,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        const SizedBox(width: 10),
                                        Text(
                                          cartItem.review!,
                                          style: TextStyle(
                                            fontWeight: FontWeight.w500,
                                            fontSize: 16,
                                            color: kprimaryColor,
                                          ),
                                        ),
                                      ],
                                    ),
                                    const SizedBox(height: 10),
                                    Text(
                                      "\$${cartItem.price!}",
                                      style: CustomTextStyles.priceTag(context),
                                    ),
                                    const SizedBox(height: 10),
                                    Divider(
                                      thickness: 2,
                                      color: grey,
                                    ),
                                    Row(
                                      children: [
                                        Text(
                                          "Remove",
                                          style: CustomTextStyles.subtitle(
                                              context),
                                        ),
                                        IconButton(
                                            onPressed: () {
                                              provider.cart.removeAt(index);
                                              setState(() {});
                                            },
                                            icon: Icon(
                                              Icons.delete,
                                              color: red,
                                            )),
                                        //Text("|"),
                                        Container(
                                          height: 40,
                                          decoration: BoxDecoration(
                                              color: transparent,
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                              border: Border.all(
                                                  color: grey, width: 2)),
                                          child: Row(
                                            children: [
                                              IconButton(
                                                  onPressed: () {},
                                                  icon: Icon(
                                                    Icons.remove,
                                                    color: black,
                                                  )),
                                              const SizedBox(
                                                width: 5,
                                              ),
                                              const SizedBox(
                                                width: 5,
                                              ),
                                              IconButton(
                                                  onPressed: () {},
                                                  icon: Icon(
                                                    Icons.add,
                                                    color: black,
                                                  ))
                                            ],
                                          ),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
