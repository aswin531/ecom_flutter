class Category {
  final String title;
  final String image;
  Category({required this.title, required this.image});
}

final List<Category> categories = [
  Category(title: "Shoes", image: "assets/images/iphone.png"),
  Category(title: "Fashion", image: 'assets/images/fashionbg.jpg'),
  Category(title: "Mobiles", image: 'assets/images/watch.webp'),
  Category(title: "Watches", image: "assets/images/iphone.png"),
  Category(title: "SkinCare", image: "assets/images/niveabg.png"),
];
