import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../routes/app_pages.dart';
import '../controller/track_order_controller.dart';
import '../widget/track_order_map.dart';
import '../widget/track_order_status.dart';
import '../widget/track_order_timeline.dart';
import '../widget/track_order_address.dart';
import '../widget/track_order_support.dart';

class TrackOrderView extends GetView<TrackOrderController> {
  const TrackOrderView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.surface.withValues(alpha: 0.9),
        elevation: 0,
        scrolledUnderElevation: 0,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Theme.of(context).colorScheme.primary,
          ),
          onPressed: () => Get.back(),
        ),
        title: Text(
          'TRACK ORDER',
          style: Theme.of(context).textTheme.titleLarge?.copyWith(
                fontWeight: FontWeight.bold,
                letterSpacing: 2.0,
                color: Theme.of(context).colorScheme.primary,
              ),
        ),
        centerTitle: true,
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
        padding: const EdgeInsets.all(24),
        child: Center(
          child: Container(
            constraints: const BoxConstraints(maxWidth: 576), // max-w-xl
            child: const Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                TrackOrderMap(),
                SizedBox(height: 24),
                TrackOrderStatus(),
                SizedBox(height: 24),
                TrackOrderTimeline(),
                SizedBox(height: 24),
                TrackOrderAddress(),
                SizedBox(height: 24),
                TrackOrderSupport(),
                SizedBox(height: 120), // Bottom padding for FAB/BottomNav if any
              ],
            ),
          ),
        ),
      ),
    );
  }
}
