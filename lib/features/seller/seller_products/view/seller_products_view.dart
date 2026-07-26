import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../../core/theme/app_colors.dart';
import '../../widget/seller_bottom_nav_bar.dart';
import '../controller/seller_products_controller.dart';
import '../widget/seller_product_card.dart';
import '../widget/seller_product_search_filter_bar.dart';

class SellerProductsView extends GetView<SellerProductsController> {
  const SellerProductsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        backgroundColor: AppColors.background,
        elevation: 0,
        automaticallyImplyLeading: false,
        title: Text(
          'Manage Inventory',
          style: GoogleFonts.literata(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: AppColors.textPrimary,
          ),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.add_circle, color: AppColors.primary, size: 28),
            onPressed: controller.navigateToAddProduct,
          ),
          const SizedBox(width: 8),
        ],
      ),
      bottomNavigationBar: const SellerBottomNavBar(currentIndex: 1),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              const SellerProductSearchFilterBar(),
              const SizedBox(height: 16),
              Expanded(
                child: Obx(
                  () => controller.products.isEmpty
                      ? Center(
                          child: Text(
                            'No products in catalog',
                            style: GoogleFonts.nunitoSans(color: AppColors.textSecondary),
                          ),
                        )
                      : ListView.separated(
                          itemCount: controller.products.length,
                          separatorBuilder: (context, index) => const SizedBox(height: 12),
                          itemBuilder: (context, index) {
                            final product = controller.products[index];
                            return SellerProductCard(
                              product: product,
                              onToggleStatus: () => controller.toggleStatus(index),
                              onDelete: () => controller.deleteProduct(index),
                            );
                          },
                        ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
