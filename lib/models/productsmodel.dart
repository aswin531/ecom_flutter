import 'package:ecom/styles/colors.dart';
import 'package:flutter/material.dart';

class Product {
  String? title;
  String? description;
  List<String>? images;
  String? review;
  String? seller;
  String? price;
  String? category;
  double? rate;
  int quantity;
  List<Color>? colors;

  Product(
      {this.title,
      this.description,
      this.images,
      this.review,
      this.seller,
      this.price,
      this.category,
      this.rate,
      required this.quantity,
      this.colors});

  String get primaryImage => images?.isNotEmpty == true
      ? images![0]
      : 'assets/images/default_image.jpg';
}

final List<Product> products = [
  Product(
      title: "Pixel 8",
      description:
          "Google Pixel 8 is powered by a nona-core Google Tensor G3 processor.",
      images: [
        "assets/images/pixel8bg.png",
        "assets/images/pixel8bg.png",
        "assets/images/pixel8bg.png"
      ],
      price: "60000",
      seller: "Google pvt ltd",
      category: "Mobiles",
      colors: [black, blue, richCoral],
      review: "27k Reviews",
      rate: 4.3,
      quantity: 1),
  Product(
      title: "H&M",
      description:
          "Google Pixel 8 is powered by a nona-core Google Tensor G3 processor.",
      images: [
        "assets/images/hm.png",
        "assets/images/hm.png",
        "assets/images/hm.png"
      ],
      price: "60000",
      seller: "Google pvt ltd",
      category: "Mobiles",
      colors: [black, blue, richCoral],
      review: "27k Reviews",
      rate: 4.3,
      quantity: 1),
  Product(
      title: "Nike",
      description:
          "Google Pixel 8 is powered by a nona-core Google Tensor G3 processor.",
      images: [
        "assets/images/productssneaker.png",
        "assets/images/productssneaker.png",
        "assets/images/productssneaker.png"
      ],
      price: "60000",
      seller: "Google pvt ltd",
      category: "Mobiles",
      colors: [black, blue, richCoral],
      review: "27k Reviews",
      rate: 4.3,
      quantity: 1),
  Product(
      title: "Casio",
      description:
          "Google Pixel 8 is powered by a nona-core Google Tensor G3 processor.",
      images: [
        "assets/images/watchprod.png",
        "assets/images/watchprod.png",
        "assets/images/watchprod.png"
      ],
      price: "60000",
      seller: "Google pvt ltd",
      category: "Mobiles",
      colors: [black, blue, richCoral],
      review: "27k Reviews",
      rate: 4.3,
      quantity: 1),
];
