import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../core/constants/app_strings.dart';
import '../controller/signup_controller.dart';
import 'signup_text_field.dart';

class SignupForm extends GetView<SignupController> {
  const SignupForm({super.key});

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: const BoxConstraints(maxWidth: 400),
      child: Column(
        children: [
          const SignupTextField(
            label: AppStrings.authFullNameLabel,
            hint: AppStrings.authFullNameHint,
          ),
          const SizedBox(height: 24),
          const SignupTextField(
            label: AppStrings.authEmailLabel,
            hint: AppStrings.authEmailHint,
          ),
          const SizedBox(height: 24),
          Obx(
            () => SignupTextField(
              label: AppStrings.authPasswordLabel,
              hint: AppStrings.authPasswordHint,
              isPassword: true,
              obscureText: !controller.isPasswordVisible.value,
              onToggleVisibility: controller.togglePasswordVisibility,
            ),
          ),
          const SizedBox(height: 40),
          SizedBox(
            width: double.infinity,
            height: 56,
            child: ElevatedButton(
              onPressed: controller.createAccount,
              style: ElevatedButton.styleFrom(
                backgroundColor: Theme.of(context).colorScheme.primary,
                foregroundColor: Theme.of(context).colorScheme.onPrimary,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
                elevation: 2,
              ),
              child: Text(
                AppStrings.signupButton,
                style: GoogleFonts.nunitoSans(
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 2.0,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
