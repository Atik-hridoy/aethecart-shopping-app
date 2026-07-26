import 'package:get/get.dart';
import '../controller/order_success_controller.dart';

class OrderSuccessBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<OrderSuccessController>(() => OrderSuccessController());
  }
}
