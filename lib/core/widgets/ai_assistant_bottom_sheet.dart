import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../routes/app_pages.dart';

class AiChatMessage {
  final String sender;
  final String text;
  final String? actionRoute;
  final String? actionText;
  final IconData? actionIcon;

  const AiChatMessage({
    required this.sender,
    required this.text,
    this.actionRoute,
    this.actionText,
    this.actionIcon,
  });
}

class AiAssistantBottomSheet extends StatefulWidget {
  const AiAssistantBottomSheet({super.key});

  static void show(BuildContext context) {
    Get.bottomSheet(
      const AiAssistantBottomSheet(),
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
    );
  }

  @override
  State<AiAssistantBottomSheet> createState() =>
      _AiAssistantBottomSheetState();
}

class _AiAssistantBottomSheetState extends State<AiAssistantBottomSheet> {
  final TextEditingController _controller = TextEditingController();
  final List<AiChatMessage> _messages = [
    const AiChatMessage(
      sender: 'ai',
      text:
          'Hello Atik! I am your Aether Smart Guide & Style Assistant. Ask me how to navigate pages (Checkout, Orders, Sizes), choose products, or discover deals!',
    ),
  ];

  static const List<Map<String, dynamic>> _quickPrompts = [
    {
      'title': 'How to Checkout?',
      'icon': Icons.shopping_cart_checkout_rounded
    },
    {'title': 'Track Order', 'icon': Icons.local_shipping_rounded},
    {'title': 'Saved Sizes', 'icon': Icons.straighten_rounded},
    {'title': 'Choose Outfits', 'icon': Icons.auto_awesome_rounded},
    {'title': 'Privacy Settings', 'icon': Icons.security_rounded},
  ];

  void _sendQuery([String? customQuery]) {
    final query = customQuery ?? _controller.text.trim();
    if (query.isEmpty) return;

    setState(() {
      _messages.add(AiChatMessage(
        sender: 'user',
        text: query,
      ));
      if (customQuery == null) {
        _controller.clear();
      }
    });

    final lower = query.toLowerCase();

    // AI Intent Engine & Navigation Guide Logic
    Future.delayed(const Duration(milliseconds: 700), () {
      if (!mounted) return;

      AiChatMessage reply;

      if (lower.contains('checkout') ||
          lower.contains('buy') ||
          lower.contains('cart') ||
          lower.contains('kinbo')) {
        reply = const AiChatMessage(
          sender: 'ai',
          text:
              'To Checkout your item:\n1. Tap the Cart/Bag icon in top app bar or product details.\n2. Review your items & tap "PROCEED TO CHECKOUT".\n3. Select your address & payment method to confirm.',
          actionRoute: Routes.cart,
          actionText: 'Open Cart & Checkout',
          actionIcon: Icons.shopping_bag_outlined,
        );
      } else if (lower.contains('track') ||
          lower.contains('order history') ||
          lower.contains('delivery') ||
          lower.contains('shipping')) {
        reply = const AiChatMessage(
          sender: 'ai',
          text:
              'You can track your active orders and view complete purchase history under Profile -> Order History.',
          actionRoute: Routes.trackOrder,
          actionText: 'Track Active Order',
          actionIcon: Icons.local_shipping_outlined,
        );
      } else if (lower.contains('size') ||
          lower.contains('fit') ||
          lower.contains('measurement')) {
        reply = const AiChatMessage(
          sender: 'ai',
          text:
              'You can save your body measurements in Saved Sizes. Our AI will automatically suggest the perfect fitting size (XS-XL) across all clothing items.',
          actionRoute: Routes.savedSizes,
          actionText: 'Manage Saved Sizes',
          actionIcon: Icons.straighten_rounded,
        );
      } else if (lower.contains('privacy') ||
          lower.contains('security') ||
          lower.contains('password')) {
        reply = const AiChatMessage(
          sender: 'ai',
          text:
              'Manage 2-Factor Authentication, Biometric Login, and Data Privacy controls in Security & Privacy settings.',
          actionRoute: Routes.securityPrivacy,
          actionText: 'Open Privacy Settings',
          actionIcon: Icons.security_rounded,
        );
      } else if (lower.contains('explore') ||
          lower.contains('category') ||
          lower.contains('brand')) {
        reply = const AiChatMessage(
          sender: 'ai',
          text:
              'Explore tab lets you filter by category (Apparel, Home, Tech, Accessories) and browse curated brands for each category.',
          actionRoute: Routes.collections,
          actionText: 'Explore Collections',
          actionIcon: Icons.grid_view_rounded,
        );
      } else {
        reply = AiChatMessage(
          sender: 'ai',
          text:
              'Based on your interest in "$query", I recommend pairing the Raw Silk Oversized Tunic (\$185) with our Organic Linen Trouser (\$210). Tap below to view product details!',
          actionRoute: Routes.productDetails,
          actionText: 'View Recommended Product',
          actionIcon: Icons.arrow_forward_rounded,
        );
      }

      setState(() {
        _messages.add(reply);
      });
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final mediaQuery = MediaQuery.of(context);

    return Container(
      height: mediaQuery.size.height * 0.82,
      decoration: BoxDecoration(
        color: theme.colorScheme.surface,
        borderRadius: const BorderRadius.vertical(top: Radius.circular(32)),
        border: Border.all(
          color: theme.colorScheme.primary.withValues(alpha: 0.2),
          width: 1.5,
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.3),
            blurRadius: 32,
            offset: const Offset(0, -8),
          ),
        ],
      ),
      child: Column(
        children: [
          // Drag Handle
          const SizedBox(height: 12),
          Container(
            width: 48,
            height: 5,
            decoration: BoxDecoration(
              color: theme.colorScheme.outlineVariant.withValues(alpha: 0.5),
              borderRadius: BorderRadius.circular(999),
            ),
          ),
          // Futuristic AI Header Bar
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 14, 16, 14),
            child: Row(
              children: [
                Container(
                  width: 48,
                  height: 48,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        theme.colorScheme.primary,
                        const Color(0xFF2C3E50),
                      ],
                    ),
                    shape: BoxShape.circle,
                    boxShadow: [
                      BoxShadow(
                        color: theme.colorScheme.primary.withValues(alpha: 0.3),
                        blurRadius: 10,
                      ),
                    ],
                  ),
                  child: Center(
                    child: Icon(
                      Icons.smart_toy_outlined,
                      color: theme.colorScheme.onPrimary,
                      size: 24,
                    ),
                  ),
                ),
                const SizedBox(width: 14),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text(
                            'Aether AI Smart Guide',
                            style: GoogleFonts.literata(
                              fontSize: 17,
                              fontWeight: FontWeight.bold,
                              color: theme.colorScheme.onSurface,
                            ),
                          ),
                          const SizedBox(width: 6),
                          Container(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 7, vertical: 2),
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                colors: [
                                  theme.colorScheme.primary,
                                  theme.colorScheme.tertiary,
                                ],
                              ),
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: Text(
                              'APP GUIDE',
                              style: GoogleFonts.nunitoSans(
                                fontSize: 9,
                                fontWeight: FontWeight.w800,
                                color: theme.colorScheme.onPrimary,
                                letterSpacing: 1.0,
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 2),
                      Text(
                        'Instant page navigation & product curation assistant',
                        style: GoogleFonts.nunitoSans(
                          fontSize: 11,
                          color: theme.colorScheme.onSurfaceVariant
                              .withValues(alpha: 0.7),
                        ),
                      ),
                    ],
                  ),
                ),
                IconButton(
                  onPressed: () => Get.back(),
                  icon: const Icon(Icons.close_rounded),
                ),
              ],
            ),
          ),
          const Divider(height: 1),
          // Prompts Bar
          SizedBox(
            height: 48,
            child: ListView.separated(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              scrollDirection: Axis.horizontal,
              itemCount: _quickPrompts.length,
              separatorBuilder: (context, index) => const SizedBox(width: 10),
              itemBuilder: (context, index) {
                final item = _quickPrompts[index];
                return ActionChip(
                  avatar: Icon(
                    item['icon'] as IconData,
                    size: 14,
                    color: theme.colorScheme.primary,
                  ),
                  label: Text(
                    item['title'] as String,
                    style: GoogleFonts.nunitoSans(
                      fontSize: 11,
                      fontWeight: FontWeight.bold,
                      color: theme.colorScheme.primary,
                    ),
                  ),
                  onPressed: () => _sendQuery(item['title'] as String),
                  backgroundColor:
                      theme.colorScheme.primaryContainer.withValues(alpha: 0.3),
                  side: BorderSide(
                    color: theme.colorScheme.primary.withValues(alpha: 0.25),
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(999),
                  ),
                );
              },
            ),
          ),
          const Divider(height: 1),
          // Chat Feed List with Interactive Navigation Buttons
          Expanded(
            child: ListView.builder(
              padding: const EdgeInsets.all(16),
              itemCount: _messages.length,
              itemBuilder: (context, index) {
                final msg = _messages[index];
                final isUser = msg.sender == 'user';

                return Align(
                  alignment:
                      isUser ? Alignment.centerRight : Alignment.centerLeft,
                  child: Container(
                    margin: const EdgeInsets.only(bottom: 12),
                    constraints: BoxConstraints(
                      maxWidth: mediaQuery.size.width * 0.82,
                    ),
                    padding: const EdgeInsets.all(14),
                    decoration: BoxDecoration(
                      color: isUser
                          ? theme.colorScheme.primary
                          : theme.colorScheme.surfaceContainerHighest,
                      borderRadius: BorderRadius.only(
                        topLeft: const Radius.circular(20),
                        topRight: const Radius.circular(20),
                        bottomLeft: Radius.circular(isUser ? 20 : 4),
                        bottomRight: Radius.circular(isUser ? 4 : 20),
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withValues(alpha: 0.04),
                          blurRadius: 8,
                          offset: const Offset(0, 2),
                        ),
                      ],
                    ),
                    child: Column(
                      crossAxisAlignment: isUser
                          ? CrossAxisAlignment.end
                          : CrossAxisAlignment.start,
                      children: [
                        Text(
                          msg.text,
                          style: GoogleFonts.nunitoSans(
                            fontSize: 13,
                            color: isUser
                                ? theme.colorScheme.onPrimary
                                : theme.colorScheme.onSurface,
                            height: 1.4,
                          ),
                        ),
                        // Interactive Route Navigation Action Button
                        if (!isUser && msg.actionRoute != null) ...[
                          const SizedBox(height: 12),
                          ElevatedButton.icon(
                            onPressed: () {
                              Get.back(); // Close bottom sheet
                              Get.toNamed(msg.actionRoute!);
                            },
                            icon: Icon(
                              msg.actionIcon ?? Icons.arrow_forward_rounded,
                              size: 16,
                            ),
                            label: Text(
                              msg.actionText ?? 'Navigate Now',
                              style: GoogleFonts.nunitoSans(
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            style: ElevatedButton.styleFrom(
                              backgroundColor: theme.colorScheme.primary,
                              foregroundColor: theme.colorScheme.onPrimary,
                              elevation: 0,
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 16, vertical: 10),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12),
                              ),
                            ),
                          ),
                        ],
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
          // Input Bar
          Container(
            padding: EdgeInsets.fromLTRB(
              16,
              10,
              16,
              mediaQuery.viewInsets.bottom + 14,
            ),
            decoration: BoxDecoration(
              color: theme.colorScheme.surfaceContainerLow,
              border: Border(
                top: BorderSide(
                  color: theme.colorScheme.outlineVariant
                      .withValues(alpha: 0.3),
                ),
              ),
            ),
            child: Row(
              children: [
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.camera_alt_outlined),
                  color: theme.colorScheme.primary,
                  tooltip: 'Visual Search',
                ),
                Expanded(
                  child: TextField(
                    controller: _controller,
                    onSubmitted: (_) => _sendQuery(),
                    decoration: InputDecoration(
                      hintText: 'Ask: "How to checkout?" or product advice...',
                      hintStyle: GoogleFonts.nunitoSans(fontSize: 13),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(24),
                        borderSide: BorderSide.none,
                      ),
                      filled: true,
                      fillColor: theme.colorScheme.surface,
                      contentPadding: const EdgeInsets.symmetric(
                        horizontal: 16,
                        vertical: 10,
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 8),
                IconButton.filled(
                  onPressed: () => _sendQuery(),
                  icon: const Icon(Icons.auto_awesome, size: 18),
                  style: IconButton.styleFrom(
                    backgroundColor: theme.colorScheme.primary,
                    foregroundColor: theme.colorScheme.onPrimary,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
