import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TrustCenterCard extends StatelessWidget {
  const TrustCenterCard({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Container(
      clipBehavior: Clip.antiAlias,
      decoration: BoxDecoration(
        color: theme.colorScheme.surfaceContainerHigh,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Stack(
        children: [
          // Background accent blur circle
          Positioned(
            right: -30,
            top: -30,
            child: Container(
              width: 160,
              height: 160,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: theme.colorScheme.primary.withValues(alpha: 0.05),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(28),
            child: LayoutBuilder(
              builder: (context, constraints) {
                final isSmall = constraints.maxWidth < 480;

                final badgeIcon = Container(
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: theme.colorScheme.primary.withValues(alpha: 0.1),
                    shape: BoxShape.circle,
                  ),
                  child: Icon(
                    Icons.verified_user_rounded,
                    size: 32,
                    color: theme.colorScheme.primary,
                  ),
                );

                final details = Column(
                  crossAxisAlignment: isSmall ? CrossAxisAlignment.center : CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Trust Center',
                      style: GoogleFonts.literata(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        color: theme.colorScheme.onSurface,
                      ),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      'Your safety is our foundation. AetherCart uses end-to-end encryption and bank-level secure processing to ensure your data and transactions remain exclusively yours.',
                      textAlign: isSmall ? TextAlign.center : TextAlign.start,
                      style: theme.textTheme.bodyMedium?.copyWith(
                        color: theme.colorScheme.onSurfaceVariant,
                        height: 1.5,
                      ),
                    ),
                  ],
                );

                return isSmall
                    ? Column(
                        children: [
                          badgeIcon,
                          const SizedBox(height: 16),
                          details,
                        ],
                      )
                    : Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          badgeIcon,
                          const SizedBox(width: 24),
                          Expanded(child: details),
                        ],
                      );
              },
            ),
          ),
        ],
      ),
    );
  }
}
