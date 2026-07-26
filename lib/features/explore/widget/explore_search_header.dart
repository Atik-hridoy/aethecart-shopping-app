import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../controller/explore_controller.dart';

class ExploreSearchHeader extends StatelessWidget {
  const ExploreSearchHeader({super.key, required this.controller});

  final ExploreController controller;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      decoration: BoxDecoration(
        color: theme.colorScheme.surfaceContainerLow,
        borderRadius: BorderRadius.circular(999),
        border: Border.all(
          color: theme.colorScheme.outlineVariant.withValues(alpha: 0.3),
        ),
        boxShadow: [
          BoxShadow(
            color: theme.colorScheme.secondary.withValues(alpha: 0.06),
            blurRadius: 20,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Row(
        children: [
          Icon(
            Icons.search_rounded,
            color: theme.colorScheme.primary.withValues(alpha: 0.7),
            size: 22,
          ),
          const SizedBox(width: 12),
          Expanded(
            child: TextField(
              controller: controller.searchController,
              style: GoogleFonts.nunitoSans(
                fontSize: 14,
                color: theme.colorScheme.onSurface,
              ),
              decoration: InputDecoration(
                hintText: 'Search curated collections...',
                hintStyle: GoogleFonts.nunitoSans(
                  fontSize: 14,
                  color: theme.colorScheme.onSurfaceVariant.withValues(alpha: 0.5),
                ),
                border: InputBorder.none,
                isDense: true,
                contentPadding: EdgeInsets.zero,
              ),
            ),
          ),
          Icon(
            Icons.center_focus_weak_rounded,
            color: theme.colorScheme.onSurfaceVariant.withValues(alpha: 0.6),
            size: 22,
          ),
        ],
      ),
    );
  }
}
