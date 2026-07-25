import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../core/constants/app_assets.dart';
import '../../../core/constants/app_strings.dart';
import '../controller/login_controller.dart';

class LoginFooter extends GetView<LoginController> {
  const LoginFooter({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Divider
        Row(
          children: [
            Expanded(
              child: Divider(
                color: Theme.of(context).colorScheme.outlineVariant.withValues(alpha: 0.3),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Text(
                AppStrings.authOrContinueWith,
                style: GoogleFonts.nunitoSans(
                  fontSize: 10,
                  color: Theme.of(context).colorScheme.outlineVariant,
                  letterSpacing: 2.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Expanded(
              child: Divider(
                color: Theme.of(context).colorScheme.outlineVariant.withValues(alpha: 0.3),
              ),
            ),
          ],
        ),
        const SizedBox(height: 24),

        // Decorative Images Grid
        ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 400),
          child: Row(
            children: [
              Expanded(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: AspectRatio(
                    aspectRatio: 1.5,
                    child: Image.network(
                      AppAssets.authDecorative1,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              const SizedBox(width: 16),
              Expanded(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: AspectRatio(
                    aspectRatio: 1.5,
                    child: Image.network(
                      AppAssets.authDecorative2,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 48),

        // Text Links
        RichText(
          text: TextSpan(
            style: GoogleFonts.nunitoSans(
              color: Theme.of(context).colorScheme.secondary,
              fontSize: 14,
            ),
            children: [
              TextSpan(text: '${AppStrings.signinDontHaveAccount} '),
              TextSpan(
                text: AppStrings.signinSignUpLink,
                style: TextStyle(
                  color: Theme.of(context).colorScheme.primary,
                  fontWeight: FontWeight.bold,
                ),
                recognizer: TapGestureRecognizer()..onTap = controller.goToSignUp,
              ),
            ],
          ),
        ),
        const SizedBox(height: 48),

        // Footer Icons
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.eco, size: 18, color: Theme.of(context).colorScheme.onSurfaceVariant.withValues(alpha: 0.4)),
            const SizedBox(width: 24),
            Icon(Icons.diamond, size: 18, color: Theme.of(context).colorScheme.onSurfaceVariant.withValues(alpha: 0.4)),
            const SizedBox(width: 24),
            Icon(Icons.spa, size: 18, color: Theme.of(context).colorScheme.onSurfaceVariant.withValues(alpha: 0.4)),
          ],
        ),
      ],
    );
  }
}
