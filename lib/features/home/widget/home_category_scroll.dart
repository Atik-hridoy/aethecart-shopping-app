import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../core/constants/app_assets.dart';
import '../../../core/constants/app_strings.dart';
import '../../../routes/app_pages.dart';

class HomeCategoryScroll extends StatelessWidget {
  const HomeCategoryScroll({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                AppStrings.homeCategoriesTitle,
                style: Theme.of(context).textTheme.titleLarge?.copyWith(
                  fontWeight: FontWeight.w600,
                ),
              ),
              InkWell(
                onTap: () {
                  Get.toNamed(Routes.departments);
                },
                child: Row(
                  children: [
                    Text(
                      AppStrings.homeExploreAll,
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
        ),
        const SizedBox(height: 24),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          clipBehavior: Clip.none,
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: Row(
            children: const [
              _CategoryCard(
                imageUrl: AppAssets.homeCatApparel,
                title: AppStrings.homeCategoryApparel,
              ),
              SizedBox(width: 16),
              _CategoryCard(
                imageUrl: AppAssets.homeCatSportswear,
                title: AppStrings.homeCategorySportswear,
              ),
              SizedBox(width: 16),
              _CategoryCard(
                imageUrl: AppAssets.homeCatHome,
                title: AppStrings.homeCategoryHome,
              ),
              SizedBox(width: 16),
              _CategoryCard(
                imageUrl: AppAssets.homeCatWellness,
                title: AppStrings.homeCategoryWellness,
              ),
              SizedBox(width: 16),
              _CategoryCard(
                imageUrl: AppAssets.homeCatAccessories,
                title: AppStrings.homeCategoryAccessories,
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class _CategoryCard extends StatelessWidget {
  final String imageUrl;
  final String title;

  const _CategoryCard({
    required this.imageUrl,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 128,
      child: Column(
        children: [
          Container(
            height: 128,
            width: 128,
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.surfaceContainerLow,
              borderRadius: BorderRadius.circular(16),
            ),
            clipBehavior: Clip.antiAlias,
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
                        Colors.black26,
                        Colors.transparent,
                      ],
                      stops: [0.0, 0.5],
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 8),
          Text(
            title,
            style: GoogleFonts.nunitoSans(
              color: Theme.of(context).colorScheme.onSurface,
              fontWeight: FontWeight.w500,
              fontSize: 14,
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
