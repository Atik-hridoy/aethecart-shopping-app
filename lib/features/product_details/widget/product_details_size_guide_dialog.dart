import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class ProductDetailsSizeGuideDialog extends StatefulWidget {
  const ProductDetailsSizeGuideDialog({super.key});

  static void show(BuildContext context) {
    Get.dialog(
      const Dialog(
        backgroundColor: Colors.transparent,
        insetPadding: EdgeInsets.all(16),
        child: ProductDetailsSizeGuideDialog(),
      ),
    );
  }

  @override
  State<ProductDetailsSizeGuideDialog> createState() =>
      _ProductDetailsSizeGuideDialogState();
}

class _ProductDetailsSizeGuideDialogState
    extends State<ProductDetailsSizeGuideDialog> {
  bool _isMetric = false; // false = Inches, true = CM

  static const List<Map<String, String>> _sizeDataInches = [
    {'size': 'XS', 'chest': '32 - 34"', 'waist': '26 - 28"', 'hips': '34 - 36"'},
    {'size': 'S', 'chest': '35 - 37"', 'waist': '29 - 31"', 'hips': '37 - 39"'},
    {'size': 'M', 'chest': '38 - 40"', 'waist': '32 - 34"', 'hips': '40 - 42"'},
    {'size': 'L', 'chest': '41 - 43"', 'waist': '35 - 37"', 'hips': '43 - 45"'},
    {'size': 'XL', 'chest': '44 - 46"', 'waist': '38 - 40"', 'hips': '46 - 48"'},
  ];

  static const List<Map<String, String>> _sizeDataCm = [
    {'size': 'XS', 'chest': '81 - 86 cm', 'waist': '66 - 71 cm', 'hips': '86 - 91 cm'},
    {'size': 'S', 'chest': '89 - 94 cm', 'waist': '74 - 79 cm', 'hips': '94 - 99 cm'},
    {'size': 'M', 'chest': '97 - 102 cm', 'waist': '81 - 86 cm', 'hips': '102 - 107 cm'},
    {'size': 'L', 'chest': '104 - 109 cm', 'waist': '89 - 94 cm', 'hips': '109 - 114 cm'},
    {'size': 'XL', 'chest': '112 - 117 cm', 'waist': '97 - 102 cm', 'hips': '117 - 122 cm'},
  ];

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final sizeList = _isMetric ? _sizeDataCm : _sizeDataInches;

    return Container(
      constraints: const BoxConstraints(maxWidth: 520),
      decoration: BoxDecoration(
        color: theme.colorScheme.surface,
        borderRadius: BorderRadius.circular(24),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.15),
            blurRadius: 24,
            offset: const Offset(0, 8),
          ),
        ],
      ),
      child: SingleChildScrollView(
        padding: const EdgeInsets.all(24),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Modal Header
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Icon(
                      Icons.straighten_rounded,
                      color: theme.colorScheme.primary,
                      size: 22,
                    ),
                    const SizedBox(width: 8),
                    Text(
                      'Size Guide',
                      style: GoogleFonts.literata(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: theme.colorScheme.onSurface,
                      ),
                    ),
                  ],
                ),
                IconButton(
                  onPressed: () => Get.back(),
                  icon: const Icon(Icons.close_rounded),
                  splashRadius: 20,
                ),
              ],
            ),
            const SizedBox(height: 16),
            // Unit Selector Pills
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Garment Measurements',
                  style: GoogleFonts.nunitoSans(
                    fontSize: 13,
                    fontWeight: FontWeight.bold,
                    color: theme.colorScheme.onSurfaceVariant,
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(3),
                  decoration: BoxDecoration(
                    color: theme.colorScheme.surfaceContainerHighest,
                    borderRadius: BorderRadius.circular(999),
                  ),
                  child: Row(
                    children: [
                      _buildUnitPill('INCHES', !_isMetric, () {
                        setState(() => _isMetric = false);
                      }),
                      _buildUnitPill('CM', _isMetric, () {
                        setState(() => _isMetric = true);
                      }),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16),
            // Measurement Table
            ClipRRect(
              borderRadius: BorderRadius.circular(16),
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    color: theme.colorScheme.outlineVariant.withValues(alpha: 0.3),
                  ),
                ),
                child: Table(
                  columnWidths: const {
                    0: FlexColumnWidth(1.2),
                    1: FlexColumnWidth(2.0),
                    2: FlexColumnWidth(2.0),
                    3: FlexColumnWidth(2.0),
                  },
                  children: [
                    // Table Header Row
                    TableRow(
                      decoration: BoxDecoration(
                        color: theme.colorScheme.primaryContainer
                            .withValues(alpha: 0.3),
                      ),
                      children: [
                        _buildTableCell('Size', isHeader: true),
                        _buildTableCell('Chest', isHeader: true),
                        _buildTableCell('Waist', isHeader: true),
                        _buildTableCell('Hips', isHeader: true),
                      ],
                    ),
                    // Table Data Rows
                    ...sizeList.map(
                      (row) => TableRow(
                        decoration: BoxDecoration(
                          color: row['size'] == 'M'
                              ? theme.colorScheme.primary.withValues(alpha: 0.06)
                              : Colors.transparent,
                        ),
                        children: [
                          _buildTableCell(
                            row['size']!,
                            isBold: true,
                            isHighlighted: row['size'] == 'M',
                          ),
                          _buildTableCell(row['chest']!),
                          _buildTableCell(row['waist']!),
                          _buildTableCell(row['hips']!),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 20),
            // AI Fit Recommendation Banner
            Container(
              padding: const EdgeInsets.all(14),
              decoration: BoxDecoration(
                color: theme.colorScheme.primary.withValues(alpha: 0.08),
                borderRadius: BorderRadius.circular(16),
                border: Border.all(
                  color: theme.colorScheme.primary.withValues(alpha: 0.2),
                ),
              ),
              child: Row(
                children: [
                  Icon(
                    Icons.auto_awesome,
                    color: theme.colorScheme.primary,
                    size: 18,
                  ),
                  const SizedBox(width: 10),
                  Expanded(
                    child: Text(
                      'Your saved profile fits best with Size Medium (M).',
                      style: GoogleFonts.nunitoSans(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                        color: theme.colorScheme.primary,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            // How to Measure Instructions
            Text(
              'How to Measure',
              style: GoogleFonts.literata(
                fontSize: 15,
                fontWeight: FontWeight.bold,
                color: theme.colorScheme.onSurface,
              ),
            ),
            const SizedBox(height: 8),
            _buildMeasureTip(
              theme: theme,
              title: 'Chest / Bust',
              desc: 'Measure around the fullest part of your chest, keeping tape horizontal.',
            ),
            const SizedBox(height: 6),
            _buildMeasureTip(
              theme: theme,
              title: 'Waist',
              desc: 'Measure around your natural waistline (narrowest part of torso).',
            ),
            const SizedBox(height: 6),
            _buildMeasureTip(
              theme: theme,
              title: 'Hips',
              desc: 'Measure around the fullest part of your hips and seat.',
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildUnitPill(String label, bool isSelected, VoidCallback onTap) {
    final theme = Theme.of(context);
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 6),
        decoration: BoxDecoration(
          color: isSelected ? theme.colorScheme.primary : Colors.transparent,
          borderRadius: BorderRadius.circular(999),
        ),
        child: Text(
          label,
          style: GoogleFonts.nunitoSans(
            fontSize: 10,
            fontWeight: FontWeight.bold,
            letterSpacing: 1.0,
            color: isSelected
                ? theme.colorScheme.onPrimary
                : theme.colorScheme.onSurfaceVariant,
          ),
        ),
      ),
    );
  }

  Widget _buildTableCell(
    String text, {
    bool isHeader = false,
    bool isBold = false,
    bool isHighlighted = false,
  }) {
    final theme = Theme.of(context);
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 8),
      child: Text(
        text,
        textAlign: TextAlign.center,
        style: GoogleFonts.nunitoSans(
          fontSize: 12,
          fontWeight: (isHeader || isBold || isHighlighted)
              ? FontWeight.bold
              : FontWeight.normal,
          color: isHighlighted
              ? theme.colorScheme.primary
              : (isHeader
                  ? theme.colorScheme.onSurface
                  : theme.colorScheme.onSurfaceVariant),
        ),
      ),
    );
  }

  Widget _buildMeasureTip({
    required ThemeData theme,
    required String title,
    required String desc,
  }) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Icon(
          Icons.circle,
          size: 6,
          color: theme.colorScheme.primary,
        ),
        const SizedBox(width: 8),
        Expanded(
          child: RichText(
            text: TextSpan(
              text: '$title: ',
              style: GoogleFonts.nunitoSans(
                fontSize: 12,
                fontWeight: FontWeight.bold,
                color: theme.colorScheme.onSurface,
              ),
              children: [
                TextSpan(
                  text: desc,
                  style: GoogleFonts.nunitoSans(
                    fontWeight: FontWeight.normal,
                    color: theme.colorScheme.onSurfaceVariant,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
