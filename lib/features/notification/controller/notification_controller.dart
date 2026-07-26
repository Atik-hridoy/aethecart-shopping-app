import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../routes/app_pages.dart';

class NotificationItem {
  final String id;
  final String title;
  final String description;
  final String time;
  final String category; // 'Orders', 'Promos', 'System'
  final IconData icon;
  final String? targetRoute;
  bool isRead;

  NotificationItem({
    required this.id,
    required this.title,
    required this.description,
    required this.time,
    required this.category,
    required this.icon,
    this.targetRoute,
    this.isRead = false,
  });
}

class NotificationController extends GetxController {
  final selectedCategory = 'All'.obs;
  final categories = const ['All', 'Orders', 'Promos', 'System'];

  final RxList<NotificationItem> notifications = <NotificationItem>[
    NotificationItem(
      id: 'n1',
      title: 'Order Dispatched',
      description:
          'Your order #84920 for Raw Silk Tunic is on its way via Carbon-Neutral Express.',
      time: '10m ago',
      category: 'Orders',
      icon: Icons.local_shipping_outlined,
      targetRoute: Routes.trackOrder,
      isRead: false,
    ),
    NotificationItem(
      id: 'n2',
      title: 'Price Drop Alert!',
      description:
          'Raw Silk Oversized Tunic in your wishlist is now \$185 (Saved \$25).',
      time: '2h ago',
      category: 'Promos',
      icon: Icons.local_offer_outlined,
      targetRoute: Routes.productDetails,
      isRead: false,
    ),
    NotificationItem(
      id: 'n3',
      title: 'Item Back in Stock',
      description:
          'Sage Performance Shorts in size Medium is back in stock at Terra Atelier.',
      time: '5h ago',
      category: 'Promos',
      icon: Icons.checkroom_outlined,
      targetRoute: Routes.productDetails,
      isRead: true,
    ),
    NotificationItem(
      id: 'n4',
      title: 'Security Alert',
      description:
          'New login detected from Chrome on MacOS in Dhaka, Bangladesh.',
      time: '1d ago',
      category: 'System',
      icon: Icons.security_outlined,
      targetRoute: Routes.securityPrivacy,
      isRead: true,
    ),
    NotificationItem(
      id: 'n5',
      title: 'Aether Rewards Unlocked',
      description:
          'You earned 250 reward points from your recent purchase!',
      time: '2d ago',
      category: 'System',
      icon: Icons.stars_outlined,
      isRead: true,
    ),
  ].obs;

  List<NotificationItem> get filteredNotifications {
    if (selectedCategory.value == 'All') {
      return notifications;
    }
    return notifications
        .where((n) => n.category == selectedCategory.value)
        .toList();
  }

  int get unreadCount => notifications.where((n) => !n.isRead).length;

  void selectCategory(String cat) {
    selectedCategory.value = cat;
  }

  void markAllAsRead() {
    for (var n in notifications) {
      n.isRead = true;
    }
    notifications.refresh();
  }

  void toggleRead(String id) {
    final index = notifications.indexWhere((n) => n.id == id);
    if (index != -1) {
      notifications[index].isRead = true;
      notifications.refresh();
    }
  }

  void removeNotification(String id) {
    notifications.removeWhere((n) => n.id == id);
  }

  void clearAll() {
    notifications.clear();
  }
}
