import 'package:get/get.dart';
import '../../../routes/app_pages.dart';

class SignupController extends GetxController {
  final isPasswordVisible = false.obs;
  final selectedRole = 'Customer'.obs;

  final List<String> roles = ['Customer', 'Seller'];

  void togglePasswordVisibility() {
    isPasswordVisible.value = !isPasswordVisible.value;
  }

  void selectRole(String role) {
    selectedRole.value = role;
  }

  void goToSignIn() {
    Get.offNamed(Routes.login);
  }

  void createAccount() {
    if (selectedRole.value == 'Seller') {
      Get.offAllNamed(Routes.sellerDashboard);
    } else {
      Get.offAllNamed(Routes.home);
    }
  }
}

