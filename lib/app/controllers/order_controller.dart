import 'package:get/get.dart';
import 'package:kitchenkiosk/app/data/models/models.dart';

import 'package:kitchenkiosk/app/data/services/firebase_service.dart';

class OrderController extends GetxController {
  RxList<Order> orders = <Order>[].obs;

  @override
  void onReady() {
    orders.bindStream(FirestoreDB().getAllOrder());
    super.onInit();
  }
}
