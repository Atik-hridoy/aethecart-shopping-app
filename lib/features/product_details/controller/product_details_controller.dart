import 'package:get/get.dart';

class ProductDetailsController extends GetxController {
  final RxString selectedColor = 'Oatmeal'.obs;
  final RxString selectedSize = 'M'.obs;
  
  void setColor(String color) {
    selectedColor.value = color;
  }
  
  void setSize(String size) {
    selectedSize.value = size;
  }
  
  void goBack() {
    Get.back();
  }
}
