import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AccountVisibilitySection extends StatelessWidget {
  const AccountVisibilitySection({
    super.key,
    required this.selectedVisibility,
    required this.onChanged,
  });

  final String selectedVisibility;
  final ValueChanged<String> onChanged;

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
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Account Visibility',
            style: GoogleFonts.literata(
              fontSize: 20,
              fontWeight: FontWeight.w600,
              color: theme.colorScheme.onSurface,
            ),
          ),
          const SizedBox(height: 20),
          LayoutBuilder(
            builder: (context, constraints) {
              final isMobile = constraints.maxWidth < 600;

              final memberOption = _buildOptionCard(
                theme: theme,
                value: 'member',
                icon: Icons.group_rounded,
                title: 'Member Only',
                subtitle: 'Your profile is only visible to other verified AetherCart members.',
              );

              final publicOption = _buildOptionCard(
                theme: theme,
                value: 'public',
                icon: Icons.public_rounded,
                title: 'Public',
                subtitle: 'Your wishlist and reviews are visible to everyone on the platform.',
              );

              return isMobile
                  ? Column(
                      children: [
                        memberOption,
                        const SizedBox(height: 16),
                        publicOption,
                      ],
                    )
                  : Row(
                      children: [
                        Expanded(child: memberOption),
                        const SizedBox(width: 16),
                        Expanded(child: publicOption),
                      ],
                    );
            },
          ),
        ],
      ),
    );
  }

  Widget _buildOptionCard({
    required ThemeData theme,
    required String value,
    required IconData icon,
    required String title,
    required String subtitle,
  }) {
    final isSelected = selectedVisibility == value;

    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: () => onChanged(value),
        borderRadius: BorderRadius.circular(12),
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 200),
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: isSelected
                ? theme.colorScheme.primary.withValues(alpha: 0.05)
                : theme.colorScheme.surface,
            borderRadius: BorderRadius.circular(12),
            border: Border.all(
              color: isSelected
                  ? theme.colorScheme.primary
                  : theme.colorScheme.outlineVariant,
              width: isSelected ? 2 : 1,
            ),
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Icon(
                icon,
                color: isSelected
                    ? theme.colorScheme.primary
                    : theme.colorScheme.onSurfaceVariant,
              ),
              const SizedBox(width: 16),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: GoogleFonts.literata(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: theme.colorScheme.onSurface,
                      ),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      subtitle,
                      style: theme.textTheme.bodySmall?.copyWith(
                        color: theme.colorScheme.onSurfaceVariant,
                        height: 1.4,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
