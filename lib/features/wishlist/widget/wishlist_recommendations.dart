import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../core/constants/app_assets.dart';

class WishlistRecommendations extends StatelessWidget {
  const WishlistRecommendations({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'You might also love',
          style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                fontWeight: FontWeight.w500,
                color: Theme.of(context).colorScheme.onSurface,
              ),
        ),
        const SizedBox(height: 32),
        LayoutBuilder(
          builder: (context, constraints) {
            int crossAxisCount = 2;
            if (constraints.maxWidth >= 1024) {
              crossAxisCount = 4;
            } else if (constraints.maxWidth >= 768) {
              crossAxisCount = 3;
            }

            return GridView.count(
              crossAxisCount: crossAxisCount,
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              mainAxisSpacing: 24,
              crossAxisSpacing: 24,
              childAspectRatio: 0.6,
              children: [
                const _RecommendationItem(
                  imagePath: AppAssets.homeCatWellness, // matching footwear roughly
                  category: 'FOOTWEAR',
                  title: 'Terra Cotton Sandal',
                  price: '\$120',
                ),
                const _RecommendationItem(
                  imagePath: AppAssets.depImgBeauty, // dummy
                  category: 'APOTHECARY',
                  title: 'Eucalyptus Essence',
                  price: '\$85',
                ),
                const _RecommendationItem(
                  imagePath: AppAssets.homeCatAccessories,
                  category: 'ACCESSORIES',
                  title: 'Abstract Silk Scarf',
                  price: '\$155',
                ),
                const _RecommendationItem(
                  imagePath: AppAssets.homeCurated3, // dummy
                  category: 'JEWELRY',
                  title: 'Raw Emerald Hoops',
                  price: '\$310',
                ),
              ],
            );
          },
        ),
      ],
    );
  }
}

class _RecommendationItem extends StatelessWidget {
  final String imagePath;
  final String category;
  final String title;
  final String price;

  const _RecommendationItem({
    required this.imagePath,
    required this.category,
    required this.title,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: Container(
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.surfaceContainer,
              borderRadius: BorderRadius.circular(16),
            ),
            clipBehavior: Clip.antiAlias,
            child: Image.network(
              imagePath,
              fit: BoxFit.cover,
              width: double.infinity,
            ),
          ),
        ),
        const SizedBox(height: 12),
        Text(
          category,
          style: GoogleFonts.nunitoSans(
            fontSize: 12,
            fontWeight: FontWeight.bold,
            letterSpacing: 1.5,
            color: Theme.of(context).colorScheme.onSurfaceVariant,
          ),
        ),
        const SizedBox(height: 4),
        Text(
          title,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: Theme.of(context).textTheme.titleMedium?.copyWith(
                fontWeight: FontWeight.bold,
                color: Theme.of(context).colorScheme.onSurface,
              ),
        ),
        const SizedBox(height: 4),
        Text(
          price,
          style: GoogleFonts.nunitoSans(
            fontSize: 14,
            fontWeight: FontWeight.bold,
            color: Theme.of(context).colorScheme.primary,
          ),
        ),
      ],
    );
  }
}
