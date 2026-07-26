import 'package:get/get.dart';
import '../controller/seller_products_controller.dart';

class SellerProductsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SellerProductsController>(
      () => SellerProductsController(),
    );
  }
}
