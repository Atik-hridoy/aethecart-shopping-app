import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../controller/cart_controller.dart';
import '../widget/cart_app_bar.dart';
import '../widget/cart_item_card.dart';
import '../widget/cart_recommended_section.dart';
import '../widget/cart_summary.dart';

class CartView extends GetView<CartController> {
  const CartView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      appBar: CartAppBar(onMenuPressed: () {}),
      body: Stack(
        children: [
          SingleChildScrollView(
            padding: const EdgeInsets.only(top: 24, left: 24, right: 24, bottom: 100),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _buildHeader(context),
                const SizedBox(height: 24),
                const CartItemCard(),
                const SizedBox(height: 48),
                const CartRecommendedSection(),
                const SizedBox(height: 32),
                const CartSummary(),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildHeader(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Your Bag',
          style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                fontWeight: FontWeight.bold,
                color: Theme.of(context).colorScheme.onSurface,
              ),
        ),
        const SizedBox(height: 4),
        Text(
          '1 item ready for checkout',
          style: GoogleFonts.nunitoSans(
            fontSize: 14,
            color: Theme.of(context).colorScheme.onSurfaceVariant,
          ),
        ),
      ],
    );
  }
}
