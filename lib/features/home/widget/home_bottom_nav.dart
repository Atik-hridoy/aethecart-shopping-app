import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controller/home_controller.dart';

class HomeBottomNav extends GetView<HomeController> {
  const HomeBottomNav({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: MediaQuery.of(context).size.width * 0.9,
        constraints: const BoxConstraints(maxWidth: 400),
        height: 64,
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.surfaceContainerHigh.withValues(alpha: 0.9),
          borderRadius: BorderRadius.circular(32),
          boxShadow: [
            BoxShadow(
              color: Theme.of(context).colorScheme.onSurface.withValues(alpha: 0.06),
              blurRadius: 20,
              offset: const Offset(0, 4),
            )
          ],
        ),
        clipBehavior: Clip.antiAlias,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            _buildNavItem(context, Icons.home_outlined, 0),
            _buildNavItem(context, Icons.search_outlined, 1),
            _buildNavItem(context, Icons.auto_awesome, 2),
            _buildNavItem(context, Icons.person_outline, 3),
          ],
        ),
      ),
    );
  }

  Widget _buildNavItem(BuildContext context, IconData icon, int index) {
    return Obx(() {
      final isActive = controller.currentNavIndex.value == index;
      return InkWell(
        onTap: () => controller.changeNavIndex(index),
        borderRadius: BorderRadius.circular(24),
        child: Container(
          padding: const EdgeInsets.all(12),
          decoration: BoxDecoration(
            color: isActive ? Theme.of(context).colorScheme.primary : Colors.transparent,
            shape: BoxShape.circle,
            boxShadow: isActive
                ? [
                    BoxShadow(
                      color: Colors.black.withValues(alpha: 0.1),
                      blurRadius: 6,
                    )
                  ]
                : null,
          ),
          child: Icon(
            icon,
            color: isActive
                ? Theme.of(context).colorScheme.onPrimary
                : Theme.of(context).colorScheme.onSurfaceVariant,
          ),
        ),
      );
    });
  }
}
