class Product {
  final int id;
  final String title;
  final double price;
  final String description;
  final String category;
  final String image;
  final double rate;
  final int count;

  Product({
    required this.id,
    required this.title,
    required this.price,
    required this.description,
    required this.category,
    required this.image,
    required this.rate,
    required this.count,
  });

  factory Product.fromJson(Map<String, dynamic> json) {
    return Product(
      id: json['id'],
      title: json['title'],
      price: (json['price'] is int) ? (json['price'] as int).toDouble() : json['price'] as double,
      description: json['description'],
      category: json['category'],
      image: json['image'],
      rate: (json['rating']['rate'] is int) ? (json['rating']['rate'] as int).toDouble() : json['rating']['rate'] as double,
      count: json['rating']['count'],
    );
  }
}