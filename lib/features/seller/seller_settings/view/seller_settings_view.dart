import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../../core/theme/app_colors.dart';
import '../../widget/seller_bottom_nav_bar.dart';
import '../controller/seller_settings_controller.dart';
import '../widget/seller_profile_header_card.dart';
import '../widget/seller_settings_logout_button.dart';
import '../widget/seller_settings_options_switches.dart';
import '../widget/seller_settings_payout_section.dart';

class SellerSettingsView extends GetView<SellerSettingsController> {
  const SellerSettingsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        backgroundColor: AppColors.background,
        elevation: 0,
        automaticallyImplyLeading: false,
        title: Text(
          'Seller Settings',
          style: GoogleFonts.literata(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: AppColors.textPrimary,
          ),
        ),
      ),
      bottomNavigationBar: const SellerBottomNavBar(currentIndex: 4),
      body: const SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SellerProfileHeaderCard(),
              SizedBox(height: 24),
              SellerSettingsPayoutSection(),
              SizedBox(height: 24),
              SellerSettingsOptionsSwitches(),
              SizedBox(height: 30),
              SellerSettingsLogoutButton(),
              SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
