import 'package:flutter/material.dart';

import '../../../core/constants/app_assets.dart';
import '../../../core/constants/app_strings.dart';
import 'home_ai_advice_bar.dart';
import 'home_ai_picks.dart';
import 'home_category_scroll.dart';
import 'home_curated_banner.dart';
import 'home_curated_grid.dart';
import 'home_greeting.dart';
import 'home_product_carousel.dart';
import 'home_vibe_filter.dart';

class HomeTab extends StatelessWidget {
  const HomeTab({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.only(top: 32, bottom: 120), // Bottom padding for nav
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 24.0),
            child: HomeGreeting(),
          ),
          const SizedBox(height: 40),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 24.0),
            child: HomeAiAdviceBar(),
          ),
          const SizedBox(height: 56),
          const HomeCategoryScroll(),
          const SizedBox(height: 48),
          const HomeCuratedBanner(),
          const SizedBox(height: 56),
          const HomeProductCarousel(
            title: AppStrings.homeBestSellersTitle,
            actionText: AppStrings.homeExploreAll,
            products: [
              ProductItem(
                imageUrl: AppAssets.homeCatApparel,
                name: AppStrings.homeProduct1Name,
                price: AppStrings.homeProduct1Price,
                badge: 'BEST SELLER',
              ),
              ProductItem(
                imageUrl: AppAssets.homeCatSportswear,
                name: AppStrings.homeProduct2Name,
                price: AppStrings.homeProduct2Price,
                badge: 'BEST SELLER',
              ),
              ProductItem(
                imageUrl: AppAssets.colImg1,
                name: AppStrings.colProduct1Name,
                price: AppStrings.colProduct1Price,
              ),
              ProductItem(
                imageUrl: AppAssets.colImg2,
                name: AppStrings.colProduct2Name,
                price: AppStrings.colProduct2Price,
              ),
            ],
          ),
          const SizedBox(height: 56),
          const HomeProductCarousel(
            title: AppStrings.homeTrendingTitle,
            actionText: AppStrings.homeExploreAll,
            products: [
              ProductItem(
                imageUrl: AppAssets.homeCatWellness,
                name: AppStrings.homeProduct3Name,
                price: AppStrings.homeProduct3Price,
              ),
              ProductItem(
                imageUrl: AppAssets.homeCatAccessories,
                name: AppStrings.homeProduct4Name,
                price: AppStrings.homeProduct4Price,
              ),
              ProductItem(
                imageUrl: AppAssets.colImg3,
                name: AppStrings.colProduct3Name,
                price: AppStrings.colProduct3Price,
              ),
              ProductItem(
                imageUrl: AppAssets.colImg4,
                name: AppStrings.colProduct4Name,
                price: AppStrings.colProduct4Price,
              ),
            ],
          ),
          const SizedBox(height: 56),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 24.0),
            child: HomeCuratedGrid(),
          ),
          const SizedBox(height: 56),
          const HomeVibeFilter(),
          const SizedBox(height: 80),
          const HomeAiPicks(),
        ],
      ),
    );
  }
}
