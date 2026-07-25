import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../core/constants/app_assets.dart';
import '../../../../core/constants/app_strings.dart';
import '../bento_card.dart';
import '../bento_tag.dart';

class ApparelBentoCard extends StatelessWidget {
  const ApparelBentoCard({super.key});

  @override
  Widget build(BuildContext context) {
    return BentoCard(
      height: 350,
      imageUrl: AppAssets.depImgApparel,
      gradientColors: const [Colors.black54, Colors.transparent],
      content: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Text(
            AppStrings.depApparelTag,
            style: GoogleFonts.nunitoSans(
              color: Theme.of(context).colorScheme.primary,
              fontSize: 10,
              fontWeight: FontWeight.bold,
              letterSpacing: 2.0,
            ),
          ),
          const SizedBox(height: 8),
          Text(
            AppStrings.depApparelTitle,
            style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
          ),
          const SizedBox(height: 16),
          Row(
            children: const [
              BentoTag(text: 'Men'),
              SizedBox(width: 8),
              BentoTag(text: 'Women'),
              SizedBox(width: 8),
              BentoTag(text: 'Unisex'),
            ],
          ),
        ],
      ),
    );
  }
}
