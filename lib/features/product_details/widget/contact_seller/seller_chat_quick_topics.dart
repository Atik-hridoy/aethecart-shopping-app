import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SellerChatQuickTopics extends StatelessWidget {
  const SellerChatQuickTopics({
    super.key,
    required this.topics,
    required this.onTopicTap,
  });

  final List<String> topics;
  final ValueChanged<String> onTopicTap;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Column(
      children: [
        // Product Context Bar
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
          color: theme.colorScheme.surfaceContainerLow,
          child: Row(
            children: [
              Icon(
                Icons.shopping_bag_outlined,
                size: 18,
                color: theme.colorScheme.primary,
              ),
              const SizedBox(width: 8),
              Expanded(
                child: Text(
                  'Inquiry about: Linen Blend Oversized Tee (\$48.00)',
                  style: GoogleFonts.nunitoSans(
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                    color: theme.colorScheme.onSurface,
                  ),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ],
          ),
        ),
        // Quick Topic Chips
        SizedBox(
          height: 44,
          child: ListView.separated(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 6),
            scrollDirection: Axis.horizontal,
            itemCount: topics.length,
            separatorBuilder: (context, index) => const SizedBox(width: 8),
            itemBuilder: (context, index) {
              final topic = topics[index];
              return ActionChip(
                label: Text(
                  topic,
                  style: GoogleFonts.nunitoSans(
                    fontSize: 11,
                    fontWeight: FontWeight.bold,
                    color: theme.colorScheme.primary,
                  ),
                ),
                onPressed: () => onTopicTap('Need help with: $topic'),
                backgroundColor:
                    theme.colorScheme.primaryContainer.withValues(alpha: 0.3),
                side: BorderSide(
                  color: theme.colorScheme.primary.withValues(alpha: 0.2),
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(999),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
