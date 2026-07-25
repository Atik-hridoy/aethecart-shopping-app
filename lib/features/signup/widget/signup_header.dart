import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../core/constants/app_strings.dart';

class SignupHeader extends StatelessWidget {
  const SignupHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          AppStrings.splashTitle,
          style: Theme.of(context).textTheme.headlineMedium?.copyWith(
            color: Theme.of(context).colorScheme.primary,
            fontWeight: FontWeight.w600,
            letterSpacing: -0.5,
          ),
        ),
        const SizedBox(height: 16),
        Container(
          width: 32,
          height: 1,
          color: Theme.of(context).colorScheme.primaryContainer,
        ),
        const SizedBox(height: 48),
        Text(
          AppStrings.signupTitle,
          style: Theme.of(context).textTheme.titleLarge?.copyWith(
            color: Theme.of(context).colorScheme.onSurface,
            letterSpacing: 2.0,
          ),
        ),
        const SizedBox(height: 8),
        Text(
          AppStrings.signupSubtitle,
          style: GoogleFonts.nunitoSans(
            color: Theme.of(context).colorScheme.secondary,
            fontSize: 14,
          ),
        ),
      ],
    );
  }
}
