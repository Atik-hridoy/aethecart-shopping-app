import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../core/constants/app_strings.dart';
import '../controller/home_controller.dart';

class HomeBottomNav extends GetView<HomeController> {
  const HomeBottomNav({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16.0),
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.surfaceContainerLow.withValues(alpha: 0.95),
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.05),
            blurRadius: 10,
          ),
        ],
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(16),
        child: Obx(
          () => BottomNavigationBar(
            currentIndex: controller.currentNavIndex.value,
            onTap: controller.changeNavIndex,
            backgroundColor: Colors.transparent,
            elevation: 0,
            type: BottomNavigationBarType.fixed,
            selectedItemColor: Theme.of(context).colorScheme.onPrimaryContainer,
            unselectedItemColor: Theme.of(context).colorScheme.secondary,
            selectedLabelStyle: GoogleFonts.nunitoSans(
              fontSize: 12,
              fontWeight: FontWeight.bold,
            ),
            unselectedLabelStyle: GoogleFonts.nunitoSans(
              fontSize: 12,
              fontWeight: FontWeight.w500,
            ),
            items: [
              _buildNavItem(context, Icons.home, AppStrings.navHome, 0),
              _buildNavItem(context, Icons.explore, AppStrings.navExplore, 1),
              _buildNavItem(context, Icons.auto_awesome, AppStrings.navAiChat, 2),
              _buildNavItem(context, Icons.person, AppStrings.navProfile, 3),
            ],
          ),
        ),
      ),
    );
  }

  BottomNavigationBarItem _buildNavItem(BuildContext context, IconData icon, String label, int index) {
    return BottomNavigationBarItem(
      icon: Obx(() {
        final isSelected = controller.currentNavIndex.value == index;
        return AnimatedContainer(
          duration: const Duration(milliseconds: 200),
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
          decoration: BoxDecoration(
            color: isSelected ? Theme.of(context).colorScheme.primaryContainer : Colors.transparent,
            borderRadius: BorderRadius.circular(12),
          ),
          child: Icon(icon),
        );
      }),
      label: label,
    );
  }
}
