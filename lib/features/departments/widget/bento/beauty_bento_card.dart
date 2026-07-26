import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../core/constants/app_assets.dart';
import '../../../../core/constants/app_strings.dart';
import '../bento_card.dart';

class BeautyBentoCard extends StatelessWidget {
  const BeautyBentoCard({super.key});

  @override
  Widget build(BuildContext context) {
    return BentoCard(
      height: 300,
      imageUrl: AppAssets.depImgBeauty,
      gradientColors: [
        Theme.of(context).colorScheme.surfaceContainerHigh.withValues(alpha: 0.9),
        Theme.of(context).colorScheme.surfaceContainerHigh.withValues(alpha: 0.4),
      ],
      content: Row(
        children: [
          const Expanded(child: SizedBox()),
          Expanded(
            flex: 2,
            child: Padding(
              padding: const EdgeInsets.only(left: 16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    AppStrings.depBeautyTag,
                    style: GoogleFonts.nunitoSans(
                      color: Theme.of(context).colorScheme.tertiary,
                      fontSize: 10,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 2.0,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    AppStrings.depBeautyTitle,
                    style: Theme.of(context).textTheme.titleLarge?.copyWith(
                          color: Theme.of(context).colorScheme.onSurface,
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    AppStrings.depBeautySub,
                    style: GoogleFonts.nunitoSans(
                      color: Theme.of(context).colorScheme.onSurfaceVariant,
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
