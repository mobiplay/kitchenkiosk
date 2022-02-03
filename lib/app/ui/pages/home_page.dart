import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:get/get.dart';
import 'package:kitchenkiosk/app/controllers/order_controller.dart';

class HomePage extends StatelessWidget {
  final OrderController orderController = Get.put(OrderController());
  HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        title: const Text('kitchen orders'),
      ),
      body: StreamBuilder(
        stream: FirebaseFirestore.instance.collection('kitchen').snapshots(),
        builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
          if (snapshot.hasError) {
            return const Text('algo anda mal');
          }
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          }

          final data = snapshot.requireData;

          return GridView.builder(
            itemCount: data.size,
            itemBuilder: (context, index) {
              final order = data.docs[index];
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: ClipPath(
                  clipper: PointsClipper(),
                  child: Container(
                    color: Colors.yellow,
                    child: Column(
                      children: [
                        const ListTile(
                          leading: Icon(
                            Icons.push_pin,
                            color: Colors.blue,
                          ),
                          title: Text('ORDER #7354'),
                        ),
                        Text('${order['name']}  ${order['quantity']}'),
                        const Divider(
                          thickness: 1,
                        ),
                        Text('${order['name']}  ${order['quantity']}'),
                        const Divider(
                          thickness: 1,
                        ),
                        Text('${order['name']}  ${order['quantity']}'),
                        const Divider(
                          thickness: 1,
                        ),
                        Text('${order['name']}  ${order['quantity']}'),
                        const Divider(
                          thickness: 1,
                        ),
                      ],
                    ),
                  ),
                ),
              );
            },
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 5,
                childAspectRatio: 0.9,
                crossAxisSpacing: 2,
                mainAxisSpacing: 2),
            //   physics: const NeverScrollableScrollPhysics(),
          );
        },
      ),
    );
  }
}
