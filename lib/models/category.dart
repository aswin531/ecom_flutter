class Category {
  final String title;
  final String image;
  Category({required this.title, required this.image});
}

final List<Category> categories = [
  Category(title: "Shoes", image: "assets/images/watch.png"),
  Category(title: "Fashion", image: 'assets/images/fashion.jpg'),
  Category(title: "Mobiles", image: 'assets/images/iphone.webp'),
  Category(title: "Watches", image: "assets/images/watch.png"),
];
