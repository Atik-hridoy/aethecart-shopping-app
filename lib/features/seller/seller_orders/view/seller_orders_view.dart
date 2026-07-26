import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../../core/theme/app_colors.dart';
import '../controller/seller_orders_controller.dart';
import '../widget/seller_order_item_tile.dart';
import '../widget/seller_orders_filter_chips.dart';

class SellerOrdersView extends GetView<SellerOrdersController> {
  const SellerOrdersView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        backgroundColor: AppColors.background,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: AppColors.textPrimary),
          onPressed: () => Get.back(),
        ),
        title: Text(
          'Customer Orders',
          style: GoogleFonts.literata(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: AppColors.textPrimary,
          ),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              const SellerOrdersFilterChips(),
              const SizedBox(height: 16),
              Expanded(
                child: Obx(
                  () => ListView.separated(
                    itemCount: controller.orders.length,
                    separatorBuilder: (context, index) => const SizedBox(height: 12),
                    itemBuilder: (context, index) {
                      final order = controller.orders[index];
                      return SellerOrderItemTile(
                        order: order,
                        onMarkShipped: () => controller.markAsShipped(index),
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
