import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../controller/notification_controller.dart';
import '../widget/notification_item_card.dart';

class NotificationView extends GetView<NotificationController> {
  const NotificationView({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      backgroundColor: theme.colorScheme.surface,
      appBar: AppBar(
        backgroundColor: theme.colorScheme.surface,
        elevation: 0,
        leading: IconButton(
          onPressed: () => Get.back(),
          icon: const Icon(Icons.arrow_back_rounded),
        ),
        title: Text(
          'Notifications',
          style: GoogleFonts.literata(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: theme.colorScheme.onSurface,
          ),
        ),
        actions: [
          Obx(() {
            if (controller.notifications.isEmpty) return const SizedBox();
            return PopupMenuButton<String>(
              icon: const Icon(Icons.more_vert_rounded),
              onSelected: (val) {
                if (val == 'read_all') {
                  controller.markAllAsRead();
                } else if (val == 'clear_all') {
                  controller.clearAll();
                }
              },
              itemBuilder: (ctx) => [
                PopupMenuItem(
                  value: 'read_all',
                  child: Row(
                    children: [
                      const Icon(Icons.done_all_rounded, size: 18),
                      const SizedBox(width: 8),
                      Text(
                        'Mark all as read',
                        style: GoogleFonts.nunitoSans(fontSize: 13),
                      ),
                    ],
                  ),
                ),
                PopupMenuItem(
                  value: 'clear_all',
                  child: Row(
                    children: [
                      const Icon(Icons.clear_all_rounded, size: 18),
                      const SizedBox(width: 8),
                      Text(
                        'Clear all',
                        style: GoogleFonts.nunitoSans(fontSize: 13),
                      ),
                    ],
                  ),
                ),
              ],
            );
          }),
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.only(bottom: 40),
          child: Center(
            child: ConstrainedBox(
              constraints: const BoxConstraints(maxWidth: 896),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Filter Chips Row
                  SizedBox(
                    height: 44,
                    child: Obx(() {
                      final selected = controller.selectedCategory.value;

                      return ListView.separated(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        scrollDirection: Axis.horizontal,
                        itemCount: controller.categories.length,
                        separatorBuilder: (context, index) =>
                            const SizedBox(width: 10),
                        itemBuilder: (context, index) {
                          final cat = controller.categories[index];
                          final isSelected = selected == cat;

                          return ChoiceChip(
                            label: Text(
                              cat,
                              style: GoogleFonts.nunitoSans(
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                                color: isSelected
                                    ? theme.colorScheme.onPrimary
                                    : theme.colorScheme.onSurface,
                              ),
                            ),
                            selected: isSelected,
                            onSelected: (_) => controller.selectCategory(cat),
                            selectedColor: theme.colorScheme.primary,
                            backgroundColor:
                                theme.colorScheme.surfaceContainerHigh,
                            elevation: isSelected ? 2 : 0,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(999),
                            ),
                          );
                        },
                      );
                    }),
                  ),
                  const SizedBox(height: 16),
                  // Notification List Feed
                  Obx(() {
                    final list = controller.filteredNotifications;

                    if (list.isEmpty) {
                      return Padding(
                        padding: const EdgeInsets.all(48),
                        child: Center(
                          child: Column(
                            children: [
                              Icon(
                                Icons.notifications_none_rounded,
                                size: 56,
                                color: theme.colorScheme.onSurfaceVariant
                                    .withValues(alpha: 0.4),
                              ),
                              const SizedBox(height: 16),
                              Text(
                                'No notifications found',
                                style: GoogleFonts.literata(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: theme.colorScheme.onSurface,
                                ),
                              ),
                              const SizedBox(height: 6),
                              Text(
                                'You are all caught up! Updates about your orders & promos will appear here.',
                                style: GoogleFonts.nunitoSans(
                                  fontSize: 12,
                                  color: theme.colorScheme.onSurfaceVariant,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ],
                          ),
                        ),
                      );
                    }

                    return ListView.separated(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      itemCount: list.length,
                      separatorBuilder: (context, index) =>
                          const SizedBox(height: 12),
                      itemBuilder: (context, index) {
                        final item = list[index];
                        return NotificationItemCard(
                          notification: item,
                          onTap: () {
                            controller.toggleRead(item.id);
                            if (item.targetRoute != null) {
                              Get.toNamed(item.targetRoute!);
                            }
                          },
                          onDismissed: () {
                            controller.removeNotification(item.id);
                          },
                        );
                      },
                    );
                  }),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
