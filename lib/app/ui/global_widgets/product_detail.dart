
import 'package:kitchenkiosk/app/data/models/product_model.dart';
import 'package:kitchenkiosk/app/ui/theme/appcolors.dart';
import 'package:kitchenkiosk/app/ui/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProductDetail extends StatelessWidget {
  const ProductDetail({Key? key, required this.product}) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: Image.network(
                  product.imageUrl,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  product.name.toUpperCase(),
                  style: const TextStyle(fontSize: 50, color: Colors.red),
                ),
                const SizedBox(
                  height: 50,
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child:
                  Center(child: Text(product.description, style: googletitle)),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const <Widget>[
                ArrowBack(),
              ],
            ),
            const SizedBox(
              height: 50,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                _showCaseView("assets/icons/ic_clock.png", "25-30 min"),
                const SizedBox(
                  height: 50,
                ),
                const Chip(
                  avatar: CircleAvatar(
                    child: Icon(Icons.check),
                  ),
                  backgroundColor: Colors.orange,
                  labelStyle: TextStyle(fontSize: 15, color: Colors.white),
                  labelPadding: EdgeInsets.all(10),
                  label: Text(
                    'TOSTONES',
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class ArrowBack extends StatelessWidget {
  const ArrowBack({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(
        left: 10,
        right: 10,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          InkWell(
            onTap: () {
              Get.back();
            },
            child: Container(
              decoration: BoxDecoration(
                color: AppColors.red,
                borderRadius: BorderRadius.circular(100),
              ),
              padding: const EdgeInsets.all(25),
              child: const Icon(
                Icons.arrow_back_ios,
                size: (80),
                color: AppColors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

Widget _showCaseView(String image, String text) {
  return Container(
    height: 40,
    padding: const EdgeInsets.only(left: 12, right: 12),
    decoration: BoxDecoration(
        color: AppColors.red,
        boxShadow: [
          BoxShadow(
              offset: const Offset(0, 1),
              spreadRadius: 5,
              blurRadius: 15,
              color: Colors.grey.withOpacity(0.15))
        ],
        borderRadius: BorderRadius.circular(15)),
    child: Row(
      children: <Widget>[
        Image.asset(
          image,
          color: Colors.white,
          width: (20),
        ),
        const SizedBox(width: 8),
        Text(
          text,
          style: googleorder,
        ),
      ],
    ),
  );
}
