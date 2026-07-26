import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SellerChatConversation {
  final String id;
  final String storeName;
  final String avatarText;
  final String badgeText;
  final String lastMessage;
  final String time;
  final int unreadCount;
  final bool isOnline;

  const SellerChatConversation({
    required this.id,
    required this.storeName,
    required this.avatarText,
    required this.badgeText,
    required this.lastMessage,
    required this.time,
    this.unreadCount = 0,
    this.isOnline = false,
  });
}

class SellerChatController extends GetxController {
  final searchController = TextEditingController();
  final selectedFilter = 'All Chats'.obs;

  final filters = const ['All Chats', 'Unread', 'Official Brands', 'Support'];

  final RxList<SellerChatConversation> conversations = <SellerChatConversation>[
    const SellerChatConversation(
      id: 'sc1',
      storeName: 'Terra Atelier',
      avatarText: 'TA',
      badgeText: 'Official Store',
      lastMessage:
          'Thank you for reaching out! Our team is reviewing your sizing inquiry.',
      time: '12:42 PM',
      unreadCount: 2,
      isOnline: true,
    ),
    const SellerChatConversation(
      id: 'sc2',
      storeName: 'IKEA Official',
      avatarText: 'IK',
      badgeText: 'Verified Merchant',
      lastMessage:
          'Your order #84920 for Ceramic Table Lamp has been dispatched.',
      time: '10:15 AM',
      unreadCount: 0,
      isOnline: true,
    ),
    const SellerChatConversation(
      id: 'sc3',
      storeName: 'Lululemon Store',
      avatarText: 'LU',
      badgeText: 'Official Brand',
      lastMessage:
          'Good news! The Sage Performance Shorts in size Medium is back in stock.',
      time: 'Yesterday',
      unreadCount: 1,
      isOnline: false,
    ),
    const SellerChatConversation(
      id: 'sc4',
      storeName: 'Leica Craft',
      avatarText: 'LC',
      badgeText: 'Specialty Merchant',
      lastMessage:
          'Your custom artisan leather camera strap customization is complete.',
      time: 'Jul 24',
      unreadCount: 0,
      isOnline: false,
    ),
    const SellerChatConversation(
      id: 'sc5',
      storeName: 'Nike Sportswear',
      avatarText: 'NK',
      badgeText: 'Official Brand',
      lastMessage:
          'We have received your return request for the Windbreaker jacket.',
      time: 'Jul 22',
      unreadCount: 0,
      isOnline: true,
    ),
  ].obs;

  List<SellerChatConversation> get filteredConversations {
    final query = searchController.text.trim().toLowerCase();
    return conversations.where((c) {
      final matchesQuery = query.isEmpty ||
          c.storeName.toLowerCase().contains(query) ||
          c.lastMessage.toLowerCase().contains(query);

      if (selectedFilter.value == 'Unread') {
        return matchesQuery && c.unreadCount > 0;
      } else if (selectedFilter.value == 'Official Brands') {
        return matchesQuery && c.badgeText.contains('Official');
      }
      return matchesQuery;
    }).toList();
  }

  void setFilter(String filter) {
    selectedFilter.value = filter;
  }

  @override
  void onClose() {
    searchController.dispose();
    super.onClose();
  }
}
