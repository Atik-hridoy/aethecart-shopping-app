import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../core/constants/app_assets.dart';
import '../../../../core/constants/app_strings.dart';
import '../bento_card.dart';
import '../bento_list_action.dart';

class SportswearBentoCard extends StatelessWidget {
  const SportswearBentoCard({super.key});

  @override
  Widget build(BuildContext context) {
    return BentoCard(
      height: 300,
      imageUrl: AppAssets.depImgSportswear,
      gradientColors: [
        Theme.of(context).colorScheme.tertiary.withValues(alpha: 0.8),
        Colors.transparent,
      ],
      content: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Text(
            AppStrings.depSportTitle,
            style: Theme.of(context).textTheme.titleLarge?.copyWith(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
          ),
          const SizedBox(height: 4),
          Text(
            AppStrings.depSportSub,
            style: GoogleFonts.nunitoSans(
              color: Colors.white.withValues(alpha: 0.9),
              fontSize: 12,
            ),
          ),
          const SizedBox(height: 16),
          const BentoListAction(text: 'Performance'),
          const SizedBox(height: 4),
          const BentoListAction(text: 'Footwear'),
          const SizedBox(height: 4),
          const BentoListAction(text: 'Accessories'),
        ],
      ),
    );
  }
}
