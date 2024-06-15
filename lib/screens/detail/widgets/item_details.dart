import 'package:ecom/models/productsmodel.dart';
import 'package:ecom/styles/colors.dart';
import 'package:ecom/styles/custom_text_style.dart';
import 'package:flutter/material.dart';

class ItemDetails extends StatefulWidget {
  final Product product;
  const ItemDetails({super.key, required this.product});

  @override
  State<ItemDetails> createState() => _ItemDetailsState();
}

class _ItemDetailsState extends State<ItemDetails> {
  int currentColor = 1;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          widget.product.title!,
          style: CustomTextStyles.title(context),
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
          " \$${widget.product.price!}",
          style: CustomTextStyles.priceTag(context),
        ),
        const SizedBox(
          height: 10,
        ),
        Row(
          children: [
            Container(
              width: 50,
              height: 23,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15), color: green),
              alignment: Alignment.center,
              padding: const EdgeInsets.symmetric(),
              child: Row(
                children: [
                  const SizedBox(
                    width: 3.5,
                  ),
                  Icon(
                    Icons.star,
                    size: 14,
                    color: white,
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Text(
                    widget.product.rate.toString(),
                    style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 13,
                        color: Colors.white),
                  ),
                ],
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            Text(
              widget.product.review!,
              style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 16,
                  color: kprimaryColor),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
          child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: List.generate(
                  widget.product.colors!.length,
                  (index) => GestureDetector(
                        onTap: () {
                          setState(() {
                            currentColor = index;
                          });
                        },
                        child: AnimatedContainer(
                          duration: const Duration(milliseconds: 300),
                          width: 35,
                          height: 35,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: currentColor == index
                                  ? white
                                  : widget.product.colors![index],
                              border: currentColor == index
                                  ? Border.all(
                                      color: widget.product.colors![index],
                                    )
                                  : null),
                          padding: currentColor == index
                              ? const EdgeInsets.all(2)
                              : null,
                          margin: const EdgeInsets.only(right: 15),
                          child: Container(
                            width: 30,
                            height: 30,
                            decoration: BoxDecoration(
                                color: widget.product.colors![index],
                                shape: BoxShape.circle),
                          ),
                        ),
                      ))),
        ),
        const SizedBox(
          height: 5,
        ),
      ],
    );
  }
}
