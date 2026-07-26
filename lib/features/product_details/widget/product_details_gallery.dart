import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controller/product_details_controller.dart';
import 'gallery_carousel.dart';
import 'gallery_zoom_section.dart';

class ProductDetailsGallery extends GetView<ProductDetailsController> {
  const ProductDetailsGallery({super.key});

  @override
  Widget build(BuildContext context) {
    final PageController pageController = PageController();

    return Column(
      children: [
        GalleryCarousel(pageController: pageController),
        const SizedBox(height: 32),
        GalleryZoomSection(pageController: pageController),
      ],
    );
  }
}
