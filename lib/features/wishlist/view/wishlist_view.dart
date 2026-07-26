import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../controller/wishlist_controller.dart';
import '../widget/wishlist_app_bar.dart';
import '../widget/wishlist_grid.dart';
import '../widget/wishlist_recommendations.dart';

class WishlistView extends GetView<WishlistController> {
  const WishlistView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      appBar: WishlistAppBar(onMenuPressed: () {}),
      body: SingleChildScrollView(
        padding: const EdgeInsets.only(top: 24, left: 24, right: 24, bottom: 120),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildHeader(context),
            const SizedBox(height: 40),
            const WishlistGrid(),
            const SizedBox(height: 80),
            const WishlistRecommendations(),
          ],
        ),
      ),
    );
  }

  Widget _buildHeader(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'My Wishlist',
          style: Theme.of(context).textTheme.displaySmall?.copyWith(
                fontWeight: FontWeight.w500,
                color: Theme.of(context).colorScheme.onSurface,
              ),
        ),
        const SizedBox(height: 8),
        Text(
          'A curated selection of your most-loved pieces, inspired by the organic warmth of the Terra collection.',
          style: GoogleFonts.nunitoSans(
            fontSize: 16,
            height: 1.5,
            color: Theme.of(context).colorScheme.onSurfaceVariant,
          ),
        ),
      ],
    );
  }
}
