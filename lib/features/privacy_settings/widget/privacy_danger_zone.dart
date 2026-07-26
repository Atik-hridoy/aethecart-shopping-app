import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PrivacyDangerZone extends StatelessWidget {
  const PrivacyDangerZone({super.key, required this.onDeactivate});

  final VoidCallback onDeactivate;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Danger Zone',
          style: GoogleFonts.literata(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: theme.colorScheme.error,
          ),
        ),
        const SizedBox(height: 16),
        Container(
          padding: const EdgeInsets.all(24),
          decoration: BoxDecoration(
            color: theme.colorScheme.errorContainer.withValues(alpha: 0.2),
            borderRadius: BorderRadius.circular(16),
            border: Border.all(
              color: theme.colorScheme.errorContainer,
            ),
          ),
          child: LayoutBuilder(
            builder: (context, constraints) {
              final isSmall = constraints.maxWidth < 560;

              final infoText = Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Delete Account and Data',
                    style: theme.textTheme.titleMedium?.copyWith(
                      fontWeight: FontWeight.bold,
                      color: theme.colorScheme.onErrorContainer,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    'Permanently remove your account and all associated data. This action is irreversible.',
                    style: theme.textTheme.bodySmall?.copyWith(
                      color: theme.colorScheme.onErrorContainer.withValues(alpha: 0.7),
                      height: 1.4,
                    ),
                  ),
                ],
              );

              final deactivateBtn = OutlinedButton(
                onPressed: onDeactivate,
                style: OutlinedButton.styleFrom(
                  foregroundColor: theme.colorScheme.error,
                  side: BorderSide(color: theme.colorScheme.error, width: 2),
                  padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  textStyle: GoogleFonts.nunitoSans(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                child: const Text('Deactivate Account'),
              );

              return isSmall
                  ? Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        infoText,
                        const SizedBox(height: 16),
                        SizedBox(
                          width: double.infinity,
                          child: deactivateBtn,
                        ),
                      ],
                    )
                  : Row(
                      children: [
                        Expanded(child: infoText),
                        const SizedBox(width: 20),
                        deactivateBtn,
                      ],
                    );
            },
          ),
        ),
      ],
    );
  }
}
