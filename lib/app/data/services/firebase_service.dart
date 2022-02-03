import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:kitchenkiosk/app/data/models/models.dart';


class FirestoreDB {
  final FirebaseFirestore _firedb = FirebaseFirestore.instance;

  Stream<List<Order>> getAllOrder() {
    return _firedb.collection('kitchen').snapshots().map((snapshot) {
      return snapshot.docs.map((doc) => Order.fromSnapshot(doc)).toList();
    });
  }

  // Stream<List<Categories>> getCategoriessOrder() {
  //   return _firedb.collection('categories').snapshots().map((snapshot) {
  //     return snapshot.docs.map((doc) => Categories.fromSnapshot(doc)).toList();
  //   });
  // }

  Stream<List<Product>> getAllProductsBy(arguments) {
    return FirebaseFirestore.instance
        .collection('products')
        .where('category', isEqualTo: 'fastfood')
        .snapshots()
        .map((snapshot) {
      return snapshot.docs.map((doc) => Product.fromSnapshot(doc)).toList();
    });
  }

  Future<void> addProduct() {
    // Call the user's CollectionReference to add a new user
    return _firedb
        .collection('products')
        .add({
          'price': 2.50,
          'description': 'descirpsjkfkf',
          'category': 'desayunos', // John Doe
          'name': 'huevos fritos', // Stokes and Sons
          'imageUrl':
              'https://i2.wp.com/www.downshiftology.com/wp-content/uploads/2019/10/Huevos-Rancheros-2.jpg' // 42
        })
        // ignore: avoid_print
        .then((value) => print("User Added"))
        // ignore: avoid_print
        .catchError((error) => print("Failed to add user: $error"));
  }

  // Stream<List<Signage>> loadSignages() {
  //   return _firedb.collection('signage').snapshots().map((snapshot) {
    
  //     return snapshot.docs.map((doc) => Signage.fromSnapshot(doc)).toList();
  //   });
  // }
}


  