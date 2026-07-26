import 'package:get/get.dart';
import '../../../../routes/app_pages.dart';

class SellerSettingsController extends GetxController {
  final RxBool autoFulfillOrders = true.obs;
  final RxBool carbonNeutralShipping = true.obs;
  final RxBool pushNotifications = true.obs;
  final RxBool aiRestockAlerts = true.obs;

  void logoutSeller() {
    Get.offAllNamed(Routes.login);
  }
}
