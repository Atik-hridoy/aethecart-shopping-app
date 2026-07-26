import 'package:get/get.dart';
import '../controller/seller_customization_controller.dart';

class SellerCustomizationBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SellerCustomizationController>(
      () => SellerCustomizationController(),
    );
  }
}
