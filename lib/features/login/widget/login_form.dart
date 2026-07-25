import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../core/constants/app_strings.dart';
import '../controller/login_controller.dart';
import 'login_text_field.dart';

class LoginForm extends GetView<LoginController> {
  const LoginForm({super.key});

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: const BoxConstraints(maxWidth: 400),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          const LoginTextField(
            label: AppStrings.authEmailLabel,
            hint: AppStrings.authEmailHint,
          ),
          const SizedBox(height: 24),
          Padding(
            padding: const EdgeInsets.only(bottom: 8.0),
            child: InkWell(
              onTap: () {},
              child: Text(
                AppStrings.authForgotPassword,
                style: GoogleFonts.nunitoSans(
                  color: Theme.of(context).colorScheme.primary,
                  fontSize: 10,
                  fontWeight: FontWeight.w600,
                  letterSpacing: 1.5,
                ),
              ),
            ),
          ),
          Obx(
            () => LoginTextField(
              label: AppStrings.authPasswordLabel,
              hint: AppStrings.authPasswordHint,
              isPassword: true,
              obscureText: !controller.isPasswordVisible.value,
              onToggleVisibility: controller.togglePasswordVisibility,
            ),
          ),
          const SizedBox(height: 32),
          SizedBox(
            width: double.infinity,
            height: 56,
            child: Obx(
              () => ElevatedButton(
                onPressed: controller.isAuthenticating.value ? null : controller.signIn,
                style: ElevatedButton.styleFrom(
                  backgroundColor: Theme.of(context).colorScheme.primary,
                  foregroundColor: Theme.of(context).colorScheme.onPrimary,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  elevation: 2,
                ),
                child: Text(
                  controller.isAuthenticating.value
                      ? 'AUTHENTICATING...'
                      : AppStrings.signinButton,
                  style: GoogleFonts.nunitoSans(
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 2.0,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
