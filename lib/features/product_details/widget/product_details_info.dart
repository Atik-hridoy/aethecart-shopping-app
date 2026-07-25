import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../core/constants/app_strings.dart';

class ProductDetailsInfo extends StatelessWidget {
  const ProductDetailsInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          AppStrings.pdpCollectionTag.toUpperCase(),
          style: GoogleFonts.nunitoSans(
            fontSize: 12,
            fontWeight: FontWeight.bold,
            letterSpacing: 2.0,
            color: Theme.of(context).colorScheme.tertiary,
          ),
        ),
        const SizedBox(height: 8),
        Text(
          AppStrings.pdpTitle,
          style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                color: Theme.of(context).colorScheme.onSurface,
                height: 1.2,
              ),
        ),
        const SizedBox(height: 8),
        Text(
          AppStrings.pdpPrice,
          style: GoogleFonts.nunitoSans(
            fontSize: 24,
            fontWeight: FontWeight.w500,
            color: Theme.of(context).colorScheme.primary,
          ),
        ),
        const SizedBox(height: 16),
        Text(
          AppStrings.pdpDescription,
          style: GoogleFonts.nunitoSans(
            fontSize: 16,
            height: 1.6,
            color: Theme.of(context).colorScheme.onSurfaceVariant,
          ),
        ),
      ],
    );
  }
}
