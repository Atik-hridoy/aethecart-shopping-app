import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../../core/theme/app_colors.dart';
import '../../../../routes/app_pages.dart';

class SellerBottomNavBar extends StatelessWidget {
  final int currentIndex;

  const SellerBottomNavBar({
    super.key,
    required this.currentIndex,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.background,
        border: Border(
          top: BorderSide(
            color: Colors.black.withOpacity(0.06),
          ),
        ),
      ),
      child: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: (index) {
          if (index == currentIndex) return;
          switch (index) {
            case 0:
              Get.offNamed(Routes.sellerDashboard);
              break;
            case 1:
              Get.offNamed(Routes.sellerProducts);
              break;
            case 2:
              Get.toNamed(Routes.sellerAddProduct);
              break;
            case 3:
              Get.offNamed(Routes.sellerCustomization);
              break;
            case 4:
              Get.offNamed(Routes.sellerSettings);
              break;
          }
        },
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.transparent,
        elevation: 0,
        selectedItemColor: AppColors.primary,
        unselectedItemColor: AppColors.textSecondary,
        selectedLabelStyle: GoogleFonts.nunitoSans(
          fontSize: 10,
          fontWeight: FontWeight.bold,
        ),
        unselectedLabelStyle: GoogleFonts.nunitoSans(
          fontSize: 10,
          fontWeight: FontWeight.w500,
        ),
        items: const [
          BottomNavigationBarViewItem(
            icon: Icon(Icons.analytics_outlined),
            activeIcon: Icon(Icons.analytics),
            label: 'Analytics',
          ),
          BottomNavigationBarViewItem(
            icon: Icon(Icons.inventory_2_outlined),
            activeIcon: Icon(Icons.inventory_2),
            label: 'Products',
          ),
          BottomNavigationBarViewItem(
            icon: Icon(Icons.add_circle_outline),
            activeIcon: Icon(Icons.add_circle),
            label: 'Add New',
          ),
          BottomNavigationBarViewItem(
            icon: Icon(Icons.storefront_outlined),
            activeIcon: Icon(Icons.storefront),
            label: 'Shop',
          ),
          BottomNavigationBarViewItem(
            icon: Icon(Icons.settings_outlined),
            activeIcon: Icon(Icons.settings),
            label: 'Settings',
          ),
        ],
      ),
    );
  }
}

class BottomNavigationBarViewItem extends BottomNavigationBarItem {
  const BottomNavigationBarViewItem({
    required super.icon,
    super.activeIcon,
    required super.label,
  });
}
