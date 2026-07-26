import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../controller/notification_controller.dart';

class NotificationItemCard extends StatelessWidget {
  const NotificationItemCard({
    super.key,
    required this.notification,
    required this.onTap,
    required this.onDismissed,
  });

  final NotificationItem notification;
  final VoidCallback onTap;
  final VoidCallback onDismissed;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final isUnread = !notification.isRead;

    return Dismissible(
      key: Key(notification.id),
      direction: DismissDirection.endToStart,
      onDismissed: (_) => onDismissed(),
      background: Container(
        alignment: Alignment.centerRight,
        padding: const EdgeInsets.only(right: 20),
        decoration: BoxDecoration(
          color: theme.colorScheme.errorContainer,
          borderRadius: BorderRadius.circular(16),
        ),
        child: Icon(
          Icons.delete_outline_rounded,
          color: theme.colorScheme.onErrorContainer,
        ),
      ),
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(16),
        child: Container(
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: isUnread
                ? theme.colorScheme.primaryContainer.withValues(alpha: 0.15)
                : theme.colorScheme.surfaceContainerLowest,
            borderRadius: BorderRadius.circular(16),
            border: Border.all(
              color: isUnread
                  ? theme.colorScheme.primary.withValues(alpha: 0.25)
                  : theme.colorScheme.outlineVariant.withValues(alpha: 0.3),
            ),
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Category Icon Emblem
              Container(
                width: 44,
                height: 44,
                decoration: BoxDecoration(
                  color: isUnread
                      ? theme.colorScheme.primary
                      : theme.colorScheme.surfaceContainerHigh,
                  shape: BoxShape.circle,
                ),
                child: Center(
                  child: Icon(
                    notification.icon,
                    size: 20,
                    color: isUnread
                        ? theme.colorScheme.onPrimary
                        : theme.colorScheme.onSurfaceVariant,
                  ),
                ),
              ),
              const SizedBox(width: 14),
              // Content
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: Text(
                            notification.title,
                            style: GoogleFonts.literata(
                              fontSize: 15,
                              fontWeight:
                                  isUnread ? FontWeight.bold : FontWeight.w600,
                              color: theme.colorScheme.onSurface,
                            ),
                          ),
                        ),
                        Text(
                          notification.time,
                          style: GoogleFonts.nunitoSans(
                            fontSize: 11,
                            color: isUnread
                                ? theme.colorScheme.primary
                                : theme.colorScheme.onSurfaceVariant
                                    .withValues(alpha: 0.6),
                            fontWeight:
                                isUnread ? FontWeight.bold : FontWeight.normal,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 4),
                    Text(
                      notification.description,
                      style: GoogleFonts.nunitoSans(
                        fontSize: 12,
                        color: theme.colorScheme.onSurfaceVariant
                            .withValues(alpha: 0.8),
                        height: 1.35,
                      ),
                    ),
                    if (notification.targetRoute != null) ...[
                      const SizedBox(height: 10),
                      Row(
                        children: [
                          Text(
                            'View Details',
                            style: GoogleFonts.nunitoSans(
                              fontSize: 11,
                              fontWeight: FontWeight.bold,
                              color: theme.colorScheme.primary,
                            ),
                          ),
                          const SizedBox(width: 4),
                          Icon(
                            Icons.arrow_forward_rounded,
                            size: 12,
                            color: theme.colorScheme.primary,
                          ),
                        ],
                      ),
                    ],
                  ],
                ),
              ),
              if (isUnread) ...[
                const SizedBox(width: 8),
                Container(
                  width: 8,
                  height: 8,
                  decoration: BoxDecoration(
                    color: theme.colorScheme.primary,
                    shape: BoxShape.circle,
                  ),
                ),
              ],
            ],
          ),
        ),
      ),
    );
  }
}
