import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PrivacyToggleCard extends StatelessWidget {
  const PrivacyToggleCard({
    super.key,
    required this.title,
    required this.description,
    required this.value,
    required this.onChanged,
    this.icon,
    this.statusLabel,
    this.isFullWidth = false,
  });

  final String title;
  final String description;
  final bool value;
  final ValueChanged<bool> onChanged;
  final IconData? icon;
  final String? statusLabel;
  final bool isFullWidth;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Container(
      padding: const EdgeInsets.all(28),
      decoration: BoxDecoration(
        color: theme.colorScheme.surfaceContainerLow.withValues(alpha: 0.7),
        borderRadius: BorderRadius.circular(16),
        border: Border.all(
          color: theme.colorScheme.outlineVariant.withValues(alpha: 0.3),
        ),
        boxShadow: [
          BoxShadow(
            color: theme.colorScheme.onSurface.withValues(alpha: 0.04),
            blurRadius: 20,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: isFullWidth
          ? LayoutBuilder(
              builder: (context, constraints) {
                final isSmall = constraints.maxWidth < 540;
                final info = Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: GoogleFonts.literata(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                        color: theme.colorScheme.primary,
                      ),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      description,
                      style: theme.textTheme.bodyMedium?.copyWith(
                        color: theme.colorScheme.onSurfaceVariant,
                        height: 1.5,
                      ),
                    ),
                  ],
                );

                final switchToggle = Switch(
                  value: value,
                  onChanged: onChanged,
                  activeThumbColor: theme.colorScheme.onPrimary,
                  activeTrackColor: theme.colorScheme.primary,
                );

                return isSmall
                    ? Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          info,
                          const SizedBox(height: 16),
                          Align(
                            alignment: Alignment.centerRight,
                            child: switchToggle,
                          ),
                        ],
                      )
                    : Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Expanded(child: info),
                          const SizedBox(width: 24),
                          switchToggle,
                        ],
                      );
              },
            )
          : Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    if (icon != null) ...[
                      Icon(
                        icon,
                        size: 32,
                        color: theme.colorScheme.tertiary,
                      ),
                      const SizedBox(height: 16),
                    ],
                    Text(
                      title,
                      style: GoogleFonts.literata(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                        color: theme.colorScheme.onSurface,
                      ),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      description,
                      style: theme.textTheme.bodyMedium?.copyWith(
                        color: theme.colorScheme.onSurfaceVariant,
                        height: 1.5,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 24),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    if (statusLabel != null)
                      Text(
                        statusLabel!,
                        style: theme.textTheme.bodyMedium?.copyWith(
                          fontWeight: FontWeight.bold,
                          color: value
                              ? theme.colorScheme.primary
                              : theme.colorScheme.onSurfaceVariant,
                        ),
                      )
                    else
                      const SizedBox.shrink(),
                    Switch(
                      value: value,
                      onChanged: onChanged,
                      activeThumbColor: theme.colorScheme.onPrimary,
                      activeTrackColor: theme.colorScheme.primary,
                    ),
                  ],
                ),
              ],
            ),
    );
  }
}
