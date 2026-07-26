import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../../core/constants/app_strings.dart';
import '../../../../core/theme/app_colors.dart';
import '../controller/seller_add_product_controller.dart';
import 'seller_add_product_text_field.dart';

class SellerAddProductAccordionsInfo extends GetView<SellerAddProductController> {
  const SellerAddProductAccordionsInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildSectionHeader('4. PDP ACCORDIONS & SPECIFICATIONS'),
        const SizedBox(height: 12),
        _buildFormLabel(AppStrings.sellerMaterialsCareLabel),
        const SizedBox(height: 8),
        SellerAddProductTextField(
          hint: AppStrings.sellerMaterialsCareHint,
          initialValue: controller.materialsCare.value,
          maxLines: 3,
        ),
        const SizedBox(height: 16),
        _buildFormLabel(AppStrings.sellerSustainabilityLabel),
        const SizedBox(height: 8),
        SellerAddProductTextField(
          hint: AppStrings.sellerSustainabilityHint,
          initialValue: controller.sustainabilityImpact.value,
          maxLines: 3,
        ),
        const SizedBox(height: 16),
        _buildFormLabel(AppStrings.sellerShippingReturnsLabel),
        const SizedBox(height: 8),
        SellerAddProductTextField(
          hint: AppStrings.sellerShippingReturnsHint,
          initialValue: controller.shippingReturns.value,
          maxLines: 3,
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
