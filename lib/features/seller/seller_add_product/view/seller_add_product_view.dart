import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../../core/constants/app_strings.dart';
import '../../../../core/theme/app_colors.dart';
import '../controller/seller_add_product_controller.dart';
import '../widget/seller_add_product_accordions_info.dart';
import '../widget/seller_add_product_basic_info.dart';
import '../widget/seller_add_product_media_card.dart';
import '../widget/seller_add_product_pricing_stock.dart';
import '../widget/seller_add_product_publish_button.dart';
import '../widget/seller_add_product_variants.dart';

class SellerAddProductView extends GetView<SellerAddProductController> {
  const SellerAddProductView({super.key});

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
          AppStrings.sellerAddProductTitle,
          style: GoogleFonts.literata(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: AppColors.textPrimary,
          ),
        ),
      ),
      body: const SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SellerAddProductMediaCard(),
              SizedBox(height: 24),
              SellerAddProductBasicInfo(),
              SizedBox(height: 24),
              SellerAddProductPricingStock(),
              SizedBox(height: 24),
              SellerAddProductVariants(),
              SizedBox(height: 24),
              SellerAddProductAccordionsInfo(),
              SizedBox(height: 32),
              SellerAddProductPublishButton(),
              SizedBox(height: 24),
            ],
          ),
        ),
      ),
    );
  }
}
