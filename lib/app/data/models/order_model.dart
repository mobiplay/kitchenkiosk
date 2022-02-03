import 'package:cloud_firestore/cloud_firestore.dart';

class Order {
  final String name;
  final String quantity;
  final double price;
  final String description;

  const Order({
    required this.name,
    required this.quantity,
    required this.price,
    required this.description,
  });

  static Order fromSnapshot(DocumentSnapshot snap) {
    Order order = Order(
      name: snap['name'],
      quantity: snap['quantity'],
      price: snap['price'],
      description: snap['description'],
    );

    return order;
  }
}
