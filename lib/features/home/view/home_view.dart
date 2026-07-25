import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../core/constants/app_assets.dart';
import '../../../core/constants/app_strings.dart';
import '../controller/home_controller.dart';
import '../widget/home_ai_advice_bar.dart';
import '../widget/home_ai_picks.dart';
import '../widget/home_app_bar.dart';
import '../widget/home_bottom_nav.dart';
import '../widget/home_category_scroll.dart';
import '../widget/home_curated_banner.dart';
import '../widget/home_curated_grid.dart';
import '../widget/home_greeting.dart';
import '../widget/home_product_carousel.dart';
import '../widget/home_vibe_filter.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      appBar: const HomeAppBar(),
      body: Stack(
        children: [
          const SingleChildScrollView(
            padding: EdgeInsets.only(top: 32, bottom: 120), // Bottom padding for nav
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 24.0),
                  child: HomeGreeting(),
                ),
                SizedBox(height: 40),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 24.0),
                  child: HomeAiAdviceBar(),
                ),
                SizedBox(height: 56),
                HomeCategoryScroll(),
                SizedBox(height: 48),
                HomeCuratedBanner(),
                SizedBox(height: 56),
                HomeProductCarousel(
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
                SizedBox(height: 56),
                HomeProductCarousel(
                  title: AppStrings.homeTrendingTitle,
                  actionText: AppStrings.homeExploreAll, // The HTML has "View All" for Trending, but using ExploreAll is fine or I can use ViewAll
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
                SizedBox(height: 56),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 24.0),
                  child: HomeCuratedGrid(),
                ),
                SizedBox(height: 56),
                HomeVibeFilter(),
                SizedBox(height: 80),
                HomeAiPicks(),
              ],
            ),
          ),
          const Positioned(
            bottom: 24,
            left: 0,
            right: 0,
            child: HomeBottomNav(),
          ),
        ],
      ),
    );
  }
}
