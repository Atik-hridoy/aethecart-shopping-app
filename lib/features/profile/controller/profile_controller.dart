import 'package:get/get.dart';

class ProfileController extends GetxController {
  final isTwoFactorEnabled = true.obs;

  void toggleTwoFactor(bool value) {
    isTwoFactorEnabled.value = value;
  }

  void logout() {
    // Implement logout logic here
    Get.snackbar('Sign Out', 'Logging out of AetherCart...');
  }
}
