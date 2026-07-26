import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../core/constants/app_assets.dart';
import '../../../../core/constants/app_strings.dart';
import '../bento_card.dart';

class HomeBentoCard extends StatelessWidget {
  const HomeBentoCard({super.key});

  @override
  Widget build(BuildContext context) {
    return BentoCard(
      height: 300,
      imageUrl: AppAssets.depImgHome,
      gradientColors: const [Colors.white24, Colors.white10],
      content: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Text(
            AppStrings.depHomeTitle,
            style: Theme.of(context).textTheme.titleLarge?.copyWith(
                  color: Theme.of(context).colorScheme.onSurface,
                  fontWeight: FontWeight.bold,
                ),
          ),
          const SizedBox(height: 4),
          Text(
            AppStrings.depHomeSub,
            style: GoogleFonts.nunitoSans(
              color: Theme.of(context).colorScheme.onSurfaceVariant,
              fontSize: 12,
            ),
          ),
          const SizedBox(height: 16),
          Container(
            width: 40,
            height: 1,
            color: Theme.of(context).colorScheme.primary,
          ),
        ],
      ),
    );
  }
}
