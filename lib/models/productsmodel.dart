import 'package:ecom/styles/colors.dart';
import 'package:flutter/material.dart';

class Product {
  String? title;
  String? description;
  String? image;
  String? review;
  String? seller;
  String? price;
  String? category;
  double? rate;
  int? quantity;
  List<Color>? colors;

  Product(
      {this.title,
      this.description,
      this.image,
      this.review,
      this.seller,
      this.price,
      this.category,
      this.rate,
      this.quantity,
      this.colors});
}

final List<Product> products = [
  Product(
      title: "Pixel 8",
      description:
          "Google Pixel 8 is powered by a nona-core Google Tensor G3 processor.",
      image: "assets/images/pixel8bg.png",
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
      image: "assets/images/hm.png",
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
      image: "assets/images/productssneaker.png",
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
      image: "assets/images/watchprod.png",
      price: "60000",
      seller: "Google pvt ltd",
      category: "Mobiles",
      colors: [black, blue, richCoral],
      review: "27k Reviews",
      rate: 4.3,
      quantity: 1),
];
