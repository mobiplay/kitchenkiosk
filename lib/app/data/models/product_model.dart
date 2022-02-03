import 'package:cloud_firestore/cloud_firestore.dart';

class Product {
  final String name;
  final String category;
  final String imageUrl;
  final double price;
  final String description;

  const Product({
    required this.name,
    required this.category,
    required this.imageUrl,
    required this.price,
    required this.description,
  });

  static Product fromSnapshot(DocumentSnapshot snap) {
    Product product = Product(
      name: snap['name'],
      category: snap['category'],
      imageUrl: snap['imageUrl'],
      price: snap['price'],
      description: snap['description'],
    );

    return product;
  }
}
