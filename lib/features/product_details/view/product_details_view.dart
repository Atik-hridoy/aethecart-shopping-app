import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controller/product_details_controller.dart';
import '../widget/product_details_accordions.dart';
import '../widget/product_details_app_bar.dart';
import '../widget/product_details_bottom_bar.dart';
import '../widget/product_details_gallery.dart';
import '../widget/product_details_info.dart';
import '../widget/product_details_selectors.dart';

class ProductDetailsView extends GetView<ProductDetailsController> {
  const ProductDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    // For responsive layout, we check if it's wide enough to use a side-by-side layout
    final isWide = MediaQuery.of(context).size.width > 768;

    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      extendBodyBehindAppBar: true,
      appBar: ProductDetailsAppBar(
        onBackPressed: controller.goBack,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 80, left: 16, right: 16, bottom: 32),
          child: isWide ? _buildWideLayout() : _buildNarrowLayout(),
        ),
      ),
      bottomNavigationBar: const ProductDetailsBottomBar(),
    );
  }

  Widget _buildNarrowLayout() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const [
        ProductDetailsGallery(),
        SizedBox(height: 32),
        ProductDetailsInfo(),
        SizedBox(height: 32),
        ProductDetailsSelectors(),
        SizedBox(height: 32),
        ProductDetailsAccordions(),
      ],
    );
  }

  Widget _buildWideLayout() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Expanded(
          flex: 3,
          child: ProductDetailsGallery(),
        ),
        const SizedBox(width: 48),
        Expanded(
          flex: 2,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              ProductDetailsInfo(),
              SizedBox(height: 32),
              ProductDetailsSelectors(),
              SizedBox(height: 32),
              ProductDetailsAccordions(),
            ],
          ),
        ),
      ],
    );
  }
}
