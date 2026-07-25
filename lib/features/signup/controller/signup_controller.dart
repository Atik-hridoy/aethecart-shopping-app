import 'package:get/get.dart';
import '../../../routes/app_pages.dart';

class SignupController extends GetxController {
  final isPasswordVisible = false.obs;

  void togglePasswordVisibility() {
    isPasswordVisible.value = !isPasswordVisible.value;
  }

  void goToSignIn() {
    Get.offNamed(Routes.login);
  }

  void createAccount() {
    // Navigate to Home upon success
    Get.offAllNamed(Routes.home);
  }
}
