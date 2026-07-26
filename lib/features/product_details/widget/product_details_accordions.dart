import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../core/constants/app_strings.dart';

class ProductDetailsAccordions extends StatelessWidget {
  const ProductDetailsAccordions({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Divider(height: 1),
        _AccordionItem(
          title: AppStrings.pdpAccordion1Title,
          content: AppStrings.pdpAccordion1Desc,
        ),
        _AccordionItem(
          title: AppStrings.pdpAccordion2Title,
          content: AppStrings.pdpAccordion2Desc,
        ),
      ],
    );
  }
}

class _AccordionItem extends StatelessWidget {
  final String title;
  final String content;

  const _AccordionItem({
    required this.title,
    required this.content,
  });

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: Theme.of(context).copyWith(dividerColor: Colors.transparent),
      child: Container(
        decoration: BoxDecoration(
          border: Border(
            bottom: BorderSide(
              color: Theme.of(context).colorScheme.outlineVariant.withValues(alpha: 0.2),
            ),
          ),
        ),
        child: ExpansionTile(
          title: Text(
            title,
            style: Theme.of(context).textTheme.titleMedium?.copyWith(
                  fontWeight: FontWeight.bold,
                  color: Theme.of(context).colorScheme.onSurface,
                ),
          ),
          iconColor: Theme.of(context).colorScheme.outline,
          collapsedIconColor: Theme.of(context).colorScheme.outline,
          tilePadding: const EdgeInsets.symmetric(vertical: 4),
          childrenPadding: const EdgeInsets.only(bottom: 20),
          children: [
            Text(
              content,
              style: GoogleFonts.nunitoSans(
                fontSize: 14,
                height: 1.6,
                color: Theme.of(context).colorScheme.onSurfaceVariant,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
