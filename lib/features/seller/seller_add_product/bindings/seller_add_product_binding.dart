import 'package:get/get.dart';
import '../controller/seller_add_product_controller.dart';

class SellerAddProductBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SellerAddProductController>(
      () => SellerAddProductController(),
    );
  }
}
