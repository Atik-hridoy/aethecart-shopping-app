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
            fontSize: 12, // text-xs
            fontWeight: FontWeight.bold,
            letterSpacing: 4.0, // tracking-[0.25em]
            color: Theme.of(context).colorScheme.primary,
          ),
        ),
        const SizedBox(height: 8),
        Text(
          AppStrings.pdpTitle,
          style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                color: Theme.of(context).colorScheme.onSurface,
                height: 1.1, // leading-tight
                letterSpacing: -0.5, // tracking-tight
              ),
        ),
        const SizedBox(height: 8),
        Text(
          AppStrings.pdpPrice,
          style: GoogleFonts.nunitoSans(
            fontSize: 24,
            fontWeight: FontWeight.w300, // font-light
            color: Theme.of(context).colorScheme.onSurfaceVariant,
          ),
        ),
        const SizedBox(height: 16),
        Text(
          AppStrings.pdpDescription,
          style: GoogleFonts.nunitoSans(
            fontSize: 16,
            height: 1.625, // leading-relaxed
            color: Theme.of(context).colorScheme.onSurfaceVariant,
          ),
        ),
      ],
    );
  }
}
