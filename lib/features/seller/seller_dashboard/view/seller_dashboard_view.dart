import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../../core/constants/app_strings.dart';
import '../../../../core/theme/app_colors.dart';
import '../../widget/seller_bottom_nav_bar.dart';
import '../controller/seller_dashboard_controller.dart';
import '../widget/seller_ai_insights_card.dart';
import '../widget/seller_analytics_chart.dart';
import '../widget/seller_quick_actions_widget.dart';
import '../widget/seller_recent_orders_widget.dart';
import '../widget/seller_stat_card.dart';

class SellerDashboardView extends GetView<SellerDashboardController> {
  const SellerDashboardView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        backgroundColor: AppColors.background,
        elevation: 0,
        automaticallyImplyLeading: false,
        title: Row(
          children: [
            Container(
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: AppColors.primary.withOpacity(0.12),
                shape: BoxShape.circle,
              ),
              child: const Icon(
                Icons.storefront,
                color: AppColors.primary,
                size: 20,
              ),
            ),
            const SizedBox(width: 10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  AppStrings.sellerDashboardTitle,
                  style: GoogleFonts.literata(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: AppColors.textPrimary,
                  ),
                ),
                Text(
                  AppStrings.sellerWelcomeText,
                  style: GoogleFonts.nunitoSans(
                    fontSize: 11,
                    color: AppColors.textSecondary,
                  ),
                ),
              ],
            ),
          ],
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.notifications_none, color: AppColors.textPrimary),
            onPressed: () {},
          ),
          const SizedBox(width: 8),
        ],
      ),
      bottomNavigationBar: const SellerBottomNavBar(currentIndex: 0),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Stat Cards Grid
              Obx(
                () => GridView.count(
                  crossAxisCount: 2,
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  crossAxisSpacing: 12,
                  mainAxisSpacing: 12,
                  childAspectRatio: 1.4,
                  children: [
                    SellerStatCard(
                      title: AppStrings.sellerTotalRevenue,
                      value: controller.totalRevenue.value,
                      icon: Icons.payments_outlined,
                      accentColor: AppColors.primary,
                    ),
                    SellerStatCard(
                      title: AppStrings.sellerTotalOrders,
                      value: '${controller.totalOrders.value}',
                      icon: Icons.shopping_bag_outlined,
                      accentColor: AppColors.tertiary,
                    ),
                    SellerStatCard(
                      title: AppStrings.sellerActiveProducts,
                      value: '${controller.activeProducts.value}',
                      icon: Icons.inventory_2_outlined,
                      accentColor: AppColors.primary,
                    ),
                    SellerStatCard(
                      title: AppStrings.sellerAvgRating,
                      value: '★ ${controller.sellerRating.value}',
                      icon: Icons.star_outline,
                      accentColor: Colors.amber.shade700,
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),

              // AI Merchant Insights Card
              const SellerAiInsightsCard(),
              const SizedBox(height: 20),

              // Revenue Trend Chart
              const SellerAnalyticsChart(),
              const SizedBox(height: 24),

              // Quick Actions
              const SellerQuickActionsWidget(),
              const SizedBox(height: 24),

              // Recent Customer Orders List
              const SellerRecentOrdersWidget(),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
