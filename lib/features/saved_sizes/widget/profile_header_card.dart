import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfileHeaderCard extends StatelessWidget {
  const ProfileHeaderCard({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return LayoutBuilder(
      builder: (context, constraints) {
        final isSmall = constraints.maxWidth < 600;

        final avatar = Stack(
          children: [
            Container(
              width: 128,
              height: 128,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  color: theme.colorScheme.surfaceContainerHigh,
                  width: 4,
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withValues(alpha: 0.1),
                    blurRadius: 16,
                    offset: const Offset(0, 4),
                  ),
                ],
                image: const DecorationImage(
                  image: NetworkImage(
                    'https://lh3.googleusercontent.com/aida-public/AB6AXuChED_9DH-JgSqIfjU26WbZar3Uxdj59Yt6OBA_QuOQautQpjHJDx3vKrD4MEdpWp3UG0ftf3CQMGvPvzBBkL-Z6itylxXXxkG5JVusawYP7zSrMYT1lG4cqtWTL6_UWu5NtFMtiW1mzHPFMc0w9tkbPT9gRmMD6mjjAxOtWWl1cctSFtkS17ihNNdLHdEgo2nrCwU3ysyd20D_xIo_ibouc7GKKaelVGRFdyXtGUlnBoC6o7YzceJtDZZKRrgwLDvif3cNsN9-iLSf',
                  ),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Positioned(
              bottom: 4,
              right: 4,
              child: Container(
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: theme.colorScheme.primary,
                  shape: BoxShape.circle,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withValues(alpha: 0.15),
                      blurRadius: 8,
                      offset: const Offset(0, 2),
                    ),
                  ],
                ),
                child: Icon(
                  Icons.edit_outlined,
                  size: 16,
                  color: theme.colorScheme.onPrimary,
                ),
              ),
            ),
          ],
        );

        final details = Column(
          crossAxisAlignment: isSmall ? CrossAxisAlignment.center : CrossAxisAlignment.start,
          children: [
            Text(
              "Alex Rivera's Profile",
              style: GoogleFonts.literata(
                fontSize: 28,
                fontWeight: FontWeight.bold,
                color: theme.colorScheme.onSurface,
              ),
            ),
            const SizedBox(height: 6),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(
                  Icons.verified_rounded,
                  size: 18,
                  color: theme.colorScheme.primary,
                ),
                const SizedBox(width: 6),
                Text(
                  'AI-Calculated Fit • Last updated Oct 12',
                  style: theme.textTheme.bodyMedium?.copyWith(
                    color: theme.colorScheme.onSurfaceVariant,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 12),
            Wrap(
              alignment: isSmall ? WrapAlignment.center : WrapAlignment.start,
              spacing: 8,
              runSpacing: 8,
              children: [
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                  decoration: BoxDecoration(
                    color: theme.colorScheme.secondaryContainer,
                    borderRadius: BorderRadius.circular(999),
                  ),
                  child: Text(
                    'Gold Member',
                    style: theme.textTheme.labelSmall?.copyWith(
                      fontWeight: FontWeight.w700,
                      color: theme.colorScheme.onSecondaryContainer,
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                  decoration: BoxDecoration(
                    color: theme.colorScheme.tertiaryContainer,
                    borderRadius: BorderRadius.circular(999),
                  ),
                  child: Text(
                    'Tailored Fit Preferred',
                    style: theme.textTheme.labelSmall?.copyWith(
                      fontWeight: FontWeight.w700,
                      color: theme.colorScheme.onTertiaryContainer,
                    ),
                  ),
                ),
              ],
            ),
          ],
        );

        return isSmall
            ? Column(
                children: [
                  avatar,
                  const SizedBox(height: 16),
                  details,
                ],
              )
            : Row(
                children: [
                  avatar,
                  const SizedBox(width: 24),
                  Expanded(child: details),
                ],
              );
      },
    );
  }
}
