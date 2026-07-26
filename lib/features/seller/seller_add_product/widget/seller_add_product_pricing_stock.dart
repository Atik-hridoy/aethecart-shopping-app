import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../../core/constants/app_strings.dart';
import '../../../../core/theme/app_colors.dart';
import '../controller/seller_add_product_controller.dart';
import 'seller_add_product_text_field.dart';

class SellerAddProductPricingStock extends GetView<SellerAddProductController> {
  const SellerAddProductPricingStock({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildSectionHeader('2. PRICING & INVENTORY'),
        const SizedBox(height: 12),
        Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _buildFormLabel(AppStrings.sellerPriceLabel),
                  const SizedBox(height: 8),
                  const SellerAddProductTextField(
                    hint: AppStrings.sellerPriceHint,
                    keyboardType: TextInputType.number,
                  ),
                ],
              ),
            ),
            const SizedBox(width: 12),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _buildFormLabel(AppStrings.sellerComparePriceLabel),
                  const SizedBox(height: 8),
                  SellerAddProductTextField(
                    hint: AppStrings.sellerComparePriceHint,
                    initialValue: controller.compareAtPrice.value,
                    keyboardType: TextInputType.number,
                  ),
                ],
              ),
            ),
          ],
        ),
        const SizedBox(height: 16),
        _buildFormLabel(AppStrings.sellerStockLabel),
        const SizedBox(height: 8),
        const SellerAddProductTextField(
          hint: AppStrings.sellerStockHint,
          keyboardType: TextInputType.number,
        ),
      ],
    );
  }

  Widget _buildSectionHeader(String title) {
    return Text(
      title,
      style: GoogleFonts.nunitoSans(
        fontSize: 11,
        fontWeight: FontWeight.bold,
        letterSpacing: 1.5,
        color: AppColors.primary,
      ),
    );
  }

  Widget _buildFormLabel(String text) {
    return Text(
      text,
      style: GoogleFonts.nunitoSans(
        fontSize: 12,
        fontWeight: FontWeight.bold,
        color: AppColors.textPrimary,
      ),
    );
  }
}
