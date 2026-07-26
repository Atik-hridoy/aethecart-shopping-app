import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../routes/app_pages.dart';
import '../controller/order_success_controller.dart';
import '../widget/order_success_details.dart';
import '../widget/order_success_icon.dart';
import '../widget/order_success_highlights.dart';

class OrderSuccessView extends GetView<OrderSuccessController> {
  const OrderSuccessView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.surface,
        elevation: 0,
        scrolledUnderElevation: 0,
        leading: IconButton(
          icon: Icon(
            Icons.close,
            color: Theme.of(context).colorScheme.primary,
          ),
          onPressed: () => Get.offAllNamed(Routes.home),
        ),
        title: Text(
          'AetherCart',
          style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                fontWeight: FontWeight.bold,
                letterSpacing: -0.5,
                color: Theme.of(context).colorScheme.primary,
              ),
        ),
        actions: [
          IconButton(
            icon: Icon(
              Icons.shopping_bag_outlined,
              color: Theme.of(context).colorScheme.primary,
            ),
            onPressed: () => Get.offAllNamed(Routes.cart),
          ),
          const SizedBox(width: 8),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 32),
        child: Center(
          child: Container(
            constraints: const BoxConstraints(maxWidth: 672), // max-w-2xl
            child: Column(
              children: [
                const OrderSuccessIcon(),
                const SizedBox(height: 24),
                Text(
                  'Thank you for your order',
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                        fontWeight: FontWeight.bold,
                        color: Theme.of(context).colorScheme.onSurface,
                      ),
                ),
                const SizedBox(height: 12),
                Text(
                  'We\'ve received your order and are getting it ready for shipment.',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.nunitoSans(
                    fontSize: 16,
                    color: Theme.of(context).colorScheme.onSurfaceVariant,
                  ),
                ),
                const SizedBox(height: 32),
                const OrderSuccessDetails(),
                const SizedBox(height: 32),
                FilledButton.icon(
                  onPressed: () => Get.toNamed(Routes.trackOrder),
                  style: FilledButton.styleFrom(
                    backgroundColor: Theme.of(context).colorScheme.primary,
                    foregroundColor: Theme.of(context).colorScheme.onPrimary,
                    padding: const EdgeInsets.symmetric(horizontal: 48, vertical: 20),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16),
                    ),
                    elevation: 4,
                  ),
                  icon: const Icon(Icons.local_shipping_outlined),
                  label: Text(
                    'Track Order Status',
                    style: GoogleFonts.nunitoSans(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                ),
                const SizedBox(height: 16),
                TextButton.icon(
                  onPressed: () => Get.offAllNamed(Routes.home),
                  style: TextButton.styleFrom(
                    foregroundColor: Theme.of(context).colorScheme.primary,
                  ),
                  icon: const Text('Continue Shopping'),
                  label: const Icon(Icons.arrow_forward, size: 16),
                ),
                const SizedBox(height: 48),
                const OrderSuccessHighlights(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

