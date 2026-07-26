import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DataExportCard extends StatelessWidget {
  const DataExportCard({super.key, required this.onRequestExport});

  final VoidCallback onRequestExport;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Container(
      padding: const EdgeInsets.all(24),
      decoration: BoxDecoration(
        color: theme.colorScheme.secondaryContainer.withValues(alpha: 0.5),
        borderRadius: BorderRadius.circular(16),
      ),
      child: LayoutBuilder(
        builder: (context, constraints) {
          final isSmall = constraints.maxWidth < 560;

          final iconAndText = Row(
            children: [
              Container(
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: theme.colorScheme.surface,
                  shape: BoxShape.circle,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withValues(alpha: 0.04),
                      blurRadius: 8,
                      offset: const Offset(0, 2),
                    ),
                  ],
                ),
                child: Icon(
                  Icons.download_for_offline_outlined,
                  size: 28,
                  color: theme.colorScheme.secondary,
                ),
              ),
              const SizedBox(width: 16),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Download Your Data',
                      style: GoogleFonts.literata(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: theme.colorScheme.onSecondaryContainer,
                      ),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      'Get a full archive of your purchase history and personal data in CSV format.',
                      style: theme.textTheme.bodyMedium?.copyWith(
                        color: theme.colorScheme.onSecondaryContainer.withValues(alpha: 0.8),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          );

          final exportButton = ElevatedButton(
            onPressed: onRequestExport,
            style: ElevatedButton.styleFrom(
              backgroundColor: theme.colorScheme.primary,
              foregroundColor: theme.colorScheme.onPrimary,
              elevation: 0,
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
              textStyle: GoogleFonts.nunitoSans(
                fontSize: 14,
                fontWeight: FontWeight.bold,
              ),
            ),
            child: const Text('Request Export'),
          );

          return isSmall
              ? Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    iconAndText,
                    const SizedBox(height: 16),
                    SizedBox(
                      width: double.infinity,
                      child: exportButton,
                    ),
                  ],
                )
              : Row(
                  children: [
                    Expanded(child: iconAndText),
                    const SizedBox(width: 20),
                    exportButton,
                  ],
                );
        },
      ),
    );
  }
}
