import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../product_details/widget/product_details_contact_seller_sheet.dart';
import '../controller/seller_chat_controller.dart';
import '../widget/seller_chat_item.dart';

class SellerChatView extends StatelessWidget {
  const SellerChatView({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(SellerChatController());
    final theme = Theme.of(context);

    return Scaffold(
      backgroundColor: theme.colorScheme.surface,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.only(bottom: 120),
          child: Center(
            child: ConstrainedBox(
              constraints: const BoxConstraints(maxWidth: 896),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  // Page Header Title
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20, 20, 20, 12),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Seller Messages',
                              style: GoogleFonts.literata(
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                                color: theme.colorScheme.onSurface,
                              ),
                            ),
                            const SizedBox(height: 2),
                            Text(
                              'Direct chat threads with store merchants',
                              style: GoogleFonts.nunitoSans(
                                fontSize: 12,
                                color: theme.colorScheme.onSurfaceVariant,
                              ),
                            ),
                          ],
                        ),
                        IconButton.filledTonal(
                          onPressed: () => ContactSellerBottomSheet.show(context),
                          icon: const Icon(Icons.edit_note_rounded),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 8),
                  // Search Bar
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: TextField(
                      controller: controller.searchController,
                      onChanged: (_) => controller.conversations.refresh(),
                      decoration: InputDecoration(
                        hintText: 'Search seller or message...',
                        hintStyle: GoogleFonts.nunitoSans(fontSize: 13),
                        prefixIcon: const Icon(Icons.search_rounded, size: 20),
                        filled: true,
                        fillColor: theme.colorScheme.surfaceContainerHigh,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(16),
                          borderSide: BorderSide.none,
                        ),
                        contentPadding: const EdgeInsets.symmetric(vertical: 12),
                      ),
                    ),
                  ),
                  const SizedBox(height: 16),
                  // Filter Chips Scroll
                  SizedBox(
                    height: 38,
                    child: Obx(() {
                      final selected = controller.selectedFilter.value;
                      return ListView.separated(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        scrollDirection: Axis.horizontal,
                        itemCount: controller.filters.length,
                        separatorBuilder: (context, index) =>
                            const SizedBox(width: 10),
                        itemBuilder: (context, index) {
                          final filter = controller.filters[index];
                          final isSelected = selected == filter;

                          return ChoiceChip(
                            label: Text(
                              filter,
                              style: GoogleFonts.nunitoSans(
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                                color: isSelected
                                    ? theme.colorScheme.onPrimary
                                    : theme.colorScheme.onSurface,
                              ),
                            ),
                            selected: isSelected,
                            onSelected: (_) => controller.setFilter(filter),
                            selectedColor: theme.colorScheme.primary,
                            backgroundColor:
                                theme.colorScheme.surfaceContainerHigh,
                            elevation: isSelected ? 2 : 0,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(999),
                            ),
                            padding: const EdgeInsets.symmetric(
                                horizontal: 14, vertical: 6),
                          );
                        },
                      );
                    }),
                  ),
                  const SizedBox(height: 16),
                  const Divider(height: 1),
                  // Conversations List
                  Obx(() {
                    final list = controller.filteredConversations;

                    if (list.isEmpty) {
                      return Padding(
                        padding: const EdgeInsets.all(40),
                        child: Column(
                          children: [
                            Icon(
                              Icons.chat_bubble_outline_rounded,
                              size: 48,
                              color: theme.colorScheme.onSurfaceVariant
                                  .withValues(alpha: 0.4),
                            ),
                            const SizedBox(height: 12),
                            Text(
                              'No conversation threads found',
                              style: GoogleFonts.nunitoSans(
                                fontSize: 14,
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
                      itemCount: list.length,
                      separatorBuilder: (context, index) => const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 20),
                        child: Divider(height: 1),
                      ),
                      itemBuilder: (context, index) {
                        final conv = list[index];
                        return SellerChatItem(
                          conversation: conv,
                          onTap: () => ContactSellerBottomSheet.show(context),
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
