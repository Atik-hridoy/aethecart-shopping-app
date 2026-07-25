import 'package:get/get.dart';
import '../../../routes/app_pages.dart';

class LoginController extends GetxController {
  final isPasswordVisible = false.obs;
  final isAuthenticating = false.obs;

  void togglePasswordVisibility() {
    isPasswordVisible.value = !isPasswordVisible.value;
  }

  void goToSignUp() {
    Get.offNamed(Routes.signup);
  }

  void signIn() async {
    isAuthenticating.value = true;
    
    // Simulate network authentication delay
    await Future.delayed(const Duration(seconds: 1));
    isAuthenticating.value = false;
    
    // Navigate to Home
    Get.offAllNamed(Routes.home);
  }
}
