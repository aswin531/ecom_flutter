class Category {
  final String title;
  final String image;
  Category({required this.title, required this.image});
}

final List<Category> categories = [
  Category(title: "Footwear", image: "assets/images/jordanbg.png"),
  Category(title: "Mobiles", image: 'assets/images/iphone.webp'),
  Category(title: "Fashion", image: 'assets/images/fashionbg.png'),
  Category(title: "Watches", image: "assets/images/watch.png"),
  Category(title: "SkinCare", image: "assets/images/niveabg.png"),
];
