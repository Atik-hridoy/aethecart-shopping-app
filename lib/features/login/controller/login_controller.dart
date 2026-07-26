import 'package:get/get.dart';
import '../../../routes/app_pages.dart';

class LoginController extends GetxController {
  final isPasswordVisible = false.obs;
  final isAuthenticating = false.obs;
  final selectedRole = 'Customer'.obs;

  final List<String> roles = ['Customer', 'Seller'];

  void togglePasswordVisibility() {
    isPasswordVisible.value = !isPasswordVisible.value;
  }

  void selectRole(String role) {
    selectedRole.value = role;
  }

  void goToSignUp() {
    Get.offNamed(Routes.signup);
  }

  void signIn() async {
    isAuthenticating.value = true;
    
    // Simulate network authentication delay
    await Future.delayed(const Duration(seconds: 1));
    isAuthenticating.value = false;
    
    // Navigate based on selected role
    if (selectedRole.value == 'Seller') {
      Get.offAllNamed(Routes.sellerDashboard);
    } else {
      Get.offAllNamed(Routes.home);
    }
  }
}

