import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../core/constants/app_strings.dart';

class LoginHeader extends StatelessWidget {
  const LoginHeader({super.key});

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
          width: 48,
          height: 1,
          color: Theme.of(context).colorScheme.primary.withValues(alpha: 0.2),
        ),
        const SizedBox(height: 48),
        Text(
          AppStrings.signinTitle,
          style: Theme.of(context).textTheme.headlineSmall?.copyWith(
            color: Theme.of(context).colorScheme.onSurface,
            fontWeight: FontWeight.w300,
            letterSpacing: 3.0,
          ),
        ),
        const SizedBox(height: 8),
        Text(
          AppStrings.signinSubtitle,
          style: GoogleFonts.nunitoSans(
            color: Theme.of(context).colorScheme.secondary,
            fontSize: 14,
            fontWeight: FontWeight.w300,
            letterSpacing: 0.5,
          ),
        ),
      ],
    );
  }
}
