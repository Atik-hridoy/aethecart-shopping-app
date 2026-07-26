import 'package:get/get.dart';

class ProductDetailsController extends GetxController {
  final RxString selectedColor = 'Oatmeal'.obs;
  final RxString selectedSize = 'M'.obs;
  final RxInt currentGalleryIndex = 0.obs;
  
  
  void setColor(String color) {
    selectedColor.value = color;
  }
  
  void setSize(String size) {
    selectedSize.value = size;
  }

  void setGalleryIndex(int index) {
    currentGalleryIndex.value = index;
  }
  
  void goBack() {
    Get.back();
  }
}
