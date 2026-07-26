import 'package:get/get.dart';
import '../controller/security_privacy_controller.dart';

class SecurityPrivacyBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SecurityPrivacyController());
  }
}
