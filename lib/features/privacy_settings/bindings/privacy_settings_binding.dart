import 'package:get/get.dart';
import '../controller/privacy_settings_controller.dart';

class PrivacySettingsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => PrivacySettingsController());
  }
}
