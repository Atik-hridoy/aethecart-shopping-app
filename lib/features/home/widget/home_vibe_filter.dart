import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../core/constants/app_strings.dart';
import '../controller/home_controller.dart';

class HomeVibeFilter extends GetView<HomeController> {
  const HomeVibeFilter({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: Text(
            AppStrings.homeVibeFilterTitle,
            style: Theme.of(context).textTheme.titleLarge?.copyWith(
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        const SizedBox(height: 24),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: Row(
            children: AppStrings.homeVibeFilters.map((vibe) {
              return Obx(() {
                final isActive = controller.activeVibeFilter.value == vibe;
                return Padding(
                  padding: const EdgeInsets.only(right: 16.0),
                  child: InkWell(
                    onTap: () => controller.changeVibeFilter(vibe),
                    borderRadius: BorderRadius.circular(24),
                    child: AnimatedContainer(
                      duration: const Duration(milliseconds: 200),
                      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 10),
                      decoration: BoxDecoration(
                        color: isActive ? Theme.of(context).colorScheme.primary : Theme.of(context).colorScheme.primary.withValues(alpha: 0.05),
                        borderRadius: BorderRadius.circular(24),
                        border: Border.all(
                          color: isActive ? Theme.of(context).colorScheme.primary : Theme.of(context).colorScheme.outlineVariant,
                        ),
                      ),
                      child: Text(
                        vibe,
                        style: GoogleFonts.nunitoSans(
                          color: isActive ? Theme.of(context).colorScheme.onPrimary : Theme.of(context).colorScheme.onSurfaceVariant,
                          fontSize: 14,
                        ),
                      ),
                    ),
                  ),
                );
              });
            }).toList(),
          ),
        ),
      ],
    );
  }
}
