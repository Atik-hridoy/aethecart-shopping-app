import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../core/constants/app_assets.dart';
import '../controller/product_details_controller.dart';

class GalleryCarousel extends GetView<ProductDetailsController> {
  final PageController pageController;

  const GalleryCarousel({super.key, required this.pageController});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        AspectRatio(
          aspectRatio: 4 / 5,
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              boxShadow: [
                BoxShadow(
                  color: Theme.of(context).colorScheme.onSurface.withValues(alpha: 0.06),
                  blurRadius: 20,
                  offset: const Offset(0, 4),
                ),
              ],
            ),
            clipBehavior: Clip.antiAlias,
            child: PageView(
              controller: pageController,
              onPageChanged: controller.setGalleryIndex,
              children: [
                Image.network(AppAssets.pdpImg1, fit: BoxFit.cover),
                Image.network(AppAssets.pdpImg3, fit: BoxFit.cover),
              ],
            ),
          ),
        ),
        const Positioned(
          bottom: 24,
          left: 0,
          right: 0,
          child: GalleryDots(),
        ),
      ],
    );
  }
}

class GalleryDots extends GetView<ProductDetailsController> {
  const GalleryDots({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Obx(
          () => _Dot(
            isActive: controller.currentGalleryIndex.value == 0,
          ),
        ),
        const SizedBox(width: 8),
        Obx(
          () => _Dot(
            isActive: controller.currentGalleryIndex.value == 1,
          ),
        ),
      ],
    );
  }
}

class _Dot extends StatelessWidget {
  final bool isActive;

  const _Dot({required this.isActive});

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 300),
      width: isActive ? 24 : 8,
      height: 8,
      decoration: BoxDecoration(
        color: isActive
            ? Theme.of(context).colorScheme.primary
            : Theme.of(context).colorScheme.surfaceContainerHighest,
        borderRadius: BorderRadius.circular(4),
      ),
    );
  }
}
