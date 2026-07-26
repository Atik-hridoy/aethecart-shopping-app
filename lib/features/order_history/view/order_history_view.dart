import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../controller/order_history_controller.dart';
import '../widget/order_card.dart';
import '../widget/order_history_header.dart';
import '../widget/order_history_search_bar.dart';

class OrderHistoryView extends GetView<OrderHistoryController> {
  const OrderHistoryView({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      backgroundColor: theme.colorScheme.surface,
      appBar: AppBar(
        backgroundColor: theme.colorScheme.surface.withValues(alpha: 0.8),
        surfaceTintColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          onPressed: () => Get.back(),
          icon: const Icon(Icons.arrow_back_ios_new_rounded),
          color: theme.colorScheme.primary,
        ),
        title: Text(
          'AetherCart',
          style: GoogleFonts.literata(
            fontSize: 22,
            fontWeight: FontWeight.bold,
            color: theme.colorScheme.primary,
            letterSpacing: -0.5,
          ),
        ),
        centerTitle: true,
        actions: [
          Stack(
            clipBehavior: Clip.none,
            children: [
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.shopping_bag_outlined),
                color: theme.colorScheme.primary,
              ),
              Positioned(
                top: 10,
                right: 10,
                child: Container(
                  width: 8,
                  height: 8,
                  decoration: BoxDecoration(
                    color: theme.colorScheme.tertiary,
                    shape: BoxShape.circle,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(width: 8),
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.fromLTRB(24, 16, 24, 100),
          child: Center(
            child: ConstrainedBox(
              constraints: const BoxConstraints(maxWidth: 1024),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  const OrderHistoryHeader(),
                  const SizedBox(height: 24),
                  const OrderHistorySearchBar(),
                  const SizedBox(height: 32),
                  Obx(() {
                    final filtered = controller.filteredOrders;
                    if (filtered.isEmpty) {
                      return Padding(
                        padding: const EdgeInsets.symmetric(vertical: 48),
                        child: Column(
                          children: [
                            Icon(
                              Icons.search_off_rounded,
                              size: 48,
                              color: theme.colorScheme.outlineVariant,
                            ),
                            const SizedBox(height: 12),
                            Text(
                              'No matching orders found',
                              style: theme.textTheme.titleMedium?.copyWith(
                                color: theme.colorScheme.onSurfaceVariant,
                              ),
                            ),
                          ],
                        ),
                      );
                    }
                    return ListView.separated(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: filtered.length,
                      separatorBuilder: (_, _) => const SizedBox(height: 24),
                      itemBuilder: (context, index) {
                        return OrderCard(order: filtered[index]);
                      },
                    );
                  }),
                  const SizedBox(height: 48),
                  // Pagination / Load More section
                  Column(
                    children: [
                      OutlinedButton(
                        onPressed: controller.loadMore,
                        style: OutlinedButton.styleFrom(
                          foregroundColor: theme.colorScheme.primary,
                          side: BorderSide(color: theme.colorScheme.primary, width: 2),
                          padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 14),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(999),
                          ),
                          textStyle: GoogleFonts.nunitoSans(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        child: const Text('Load more history'),
                      ),
                      const SizedBox(height: 12),
                      Obx(
                        () => Text(
                          'Showing ${controller.filteredOrders.length} of ${controller.orders.length} orders',
                          style: theme.textTheme.bodySmall?.copyWith(
                            color: theme.colorScheme.outline,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
