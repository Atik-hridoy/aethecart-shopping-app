import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../core/constants/app_assets.dart';
import '../../../core/constants/app_strings.dart';
import '../../../routes/app_pages.dart';

class HomeCuratedGrid extends StatelessWidget {
  const HomeCuratedGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text(
              AppStrings.homeCuratedTitle,
              style: Theme.of(context).textTheme.titleLarge?.copyWith(
                fontWeight: FontWeight.w600,
              ),
            ),
            InkWell(
              onTap: () {
                Get.toNamed(Routes.collections);
              },
              child: Row(
                children: [
                  Text(
                    AppStrings.homeViewAll,
                    style: GoogleFonts.nunitoSans(
                      color: Theme.of(context).colorScheme.primary,
                      fontWeight: FontWeight.bold,
                      fontSize: 14,
                    ),
                  ),
                  const SizedBox(width: 4),
                  Icon(
                    Icons.arrow_forward,
                    color: Theme.of(context).colorScheme.primary,
                    size: 16,
                  ),
                ],
              ),
            ),
          ],
        ),
        const SizedBox(height: 24),
        GridView.count(
          crossAxisCount: 2,
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          mainAxisSpacing: 16,
          crossAxisSpacing: 16,
          childAspectRatio: 0.75, // Tall cards
          children: const [
            _CuratedCard(
              imageUrl: AppAssets.homeCurated1,
              tag: 'COLLECTION',
              title: 'Earth Textures',
            ),
            _CuratedCard(
              imageUrl: AppAssets.homeCurated2,
              tag: 'VIBE',
              title: 'Quiet Luxury',
            ),
            _CuratedCard(
              imageUrl: AppAssets.homeCurated3,
              tag: 'TRENDING',
              title: 'Organic Summer',
            ),
            _CuratedCard(
              imageUrl: AppAssets.homeCurated4,
              tag: 'EDIT',
              title: 'The Office Set',
            ),
          ],
        ),
      ],
    );
  }
}

class _CuratedCard extends StatelessWidget {
  final String imageUrl;
  final String tag;
  final String title;

  const _CuratedCard({
    required this.imageUrl,
    required this.tag,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(16),
      child: Stack(
        fit: StackFit.expand,
        children: [
          Image.network(
            imageUrl,
            fit: BoxFit.cover,
          ),
          Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter,
                colors: [
                  Colors.black54,
                  Colors.transparent,
                ],
                stops: [0.0, 0.5],
              ),
            ),
          ),
          Positioned(
            bottom: 12,
            left: 12,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  tag,
                  style: GoogleFonts.nunitoSans(
                    color: Colors.white.withValues(alpha: 0.8),
                    fontSize: 10,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 2.0,
                  ),
                ),
                const SizedBox(height: 2),
                Text(
                  title,
                  style: Theme.of(context).textTheme.titleSmall?.copyWith(
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
