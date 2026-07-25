import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../core/constants/app_strings.dart';
import '../controller/signup_controller.dart';

class SignupFooter extends GetView<SignupController> {
  const SignupFooter({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        RichText(
          text: TextSpan(
            style: GoogleFonts.nunitoSans(
              color: Theme.of(context).colorScheme.secondary,
              fontSize: 14,
            ),
            children: [
              const TextSpan(text: '${AppStrings.signupAlreadyHaveAccount} '),
              TextSpan(
                text: AppStrings.signupSignInLink,
                style: TextStyle(
                  color: Theme.of(context).colorScheme.primary,
                  fontWeight: FontWeight.bold,
                ),
                recognizer: TapGestureRecognizer()..onTap = controller.goToSignIn,
              ),
            ],
          ),
        ),
        const SizedBox(height: 24),
        ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 280),
          child: RichText(
            textAlign: TextAlign.center,
            text: TextSpan(
              style: GoogleFonts.nunitoSans(
                color: Theme.of(context).colorScheme.outline,
                fontSize: 10,
                height: 1.5,
              ),
              children: [
                const TextSpan(text: AppStrings.signupTermsStart),
                TextSpan(
                  text: AppStrings.signupTermsLink,
                  style: const TextStyle(decoration: TextDecoration.underline),
                  recognizer: TapGestureRecognizer()..onTap = () {},
                ),
                const TextSpan(text: AppStrings.signupAnd),
                TextSpan(
                  text: AppStrings.signupPrivacyLink,
                  style: const TextStyle(decoration: TextDecoration.underline),
                  recognizer: TapGestureRecognizer()..onTap = () {},
                ),
                const TextSpan(text: AppStrings.signupTermsEnd),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
