import 'package:get/get.dart';

class CartController extends GetxController {
  final RxInt quantity = 1.obs;

  void increment() {
    quantity.value++;
  }

  void decrement() {
    if (quantity.value > 1) {
      quantity.value--;
    }
  }

  void goBack() {
    Get.back();
  }
}
