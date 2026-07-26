import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'contact_seller/seller_chat_header.dart';
import 'contact_seller/seller_chat_input_bar.dart';
import 'contact_seller/seller_chat_messages_list.dart';
import 'contact_seller/seller_chat_quick_topics.dart';

class ContactSellerBottomSheet extends StatefulWidget {
  const ContactSellerBottomSheet({super.key});

  static void show(BuildContext context) {
    Get.bottomSheet(
      const ContactSellerBottomSheet(),
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
    );
  }

  @override
  State<ContactSellerBottomSheet> createState() =>
      _ContactSellerBottomSheetState();
}

class _ContactSellerBottomSheetState extends State<ContactSellerBottomSheet> {
  final TextEditingController _msgController = TextEditingController();
  final List<Map<String, dynamic>> _messages = [
    {
      'sender': 'seller',
      'text':
          'Hello! Welcome to Terra Atelier official store. How can we help you with the Linen Blend Oversized Tee today?',
      'time': 'Just now',
    },
  ];

  static const List<String> _quickTopics = [
    'Sizing Help',
    'Delivery Time',
    'Fabric Care',
    'Restock Date'
  ];

  void _sendMessage([String? customText]) {
    final text = customText ?? _msgController.text.trim();
    if (text.isEmpty) return;

    setState(() {
      _messages.add({
        'sender': 'user',
        'text': text,
        'time': 'Just now',
      });
      if (customText == null) {
        _msgController.clear();
      }
    });

    // Simulate instant auto-reply from seller
    Future.delayed(const Duration(milliseconds: 900), () {
      if (!mounted) return;
      setState(() {
        _messages.add({
          'sender': 'seller',
          'text':
              'Thank you for reaching out! Our team is reviewing your request regarding "$text". We typically reply in under 5 minutes.',
          'time': 'Just now',
        });
      });
    });
  }

  @override
  void dispose() {
    _msgController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final mediaQuery = MediaQuery.of(context);

    return Container(
      height: mediaQuery.size.height * 0.78,
      decoration: BoxDecoration(
        color: theme.colorScheme.surface,
        borderRadius: const BorderRadius.vertical(top: Radius.circular(28)),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.2),
            blurRadius: 24,
            offset: const Offset(0, -4),
          ),
        ],
      ),
      child: Column(
        children: [
          const SellerChatHeader(),
          const Divider(height: 1),
          SellerChatQuickTopics(
            topics: _quickTopics,
            onTopicTap: (topicText) => _sendMessage(topicText),
          ),
          const Divider(height: 1),
          Expanded(
            child: SellerChatMessagesList(messages: _messages),
          ),
          SellerChatInputBar(
            controller: _msgController,
            onSend: () => _sendMessage(),
          ),
        ],
      ),
    );
  }
}
