import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../../core/theme/app_colors.dart';
import '../../widget/seller_bottom_nav_bar.dart';
import '../controller/seller_customization_controller.dart';
import '../widget/seller_customization_form.dart';
import '../widget/seller_customization_header_card.dart';
import '../widget/seller_customization_save_button.dart';
import '../widget/seller_customization_theme_selector.dart';

class SellerCustomizationView extends GetView<SellerCustomizationController> {
  const SellerCustomizationView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        backgroundColor: AppColors.background,
        elevation: 0,
        automaticallyImplyLeading: false,
        title: Text(
          'Shop Customization',
          style: GoogleFonts.literata(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: AppColors.textPrimary,
          ),
        ),
      ),
      bottomNavigationBar: const SellerBottomNavBar(currentIndex: 3),
      body: const SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SellerCustomizationHeaderCard(),
              SizedBox(height: 24),
              SellerCustomizationForm(),
              SizedBox(height: 24),
              SellerCustomizationThemeSelector(),
              SizedBox(height: 24),
              SellerCustomizationSaveButton(),
              SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
