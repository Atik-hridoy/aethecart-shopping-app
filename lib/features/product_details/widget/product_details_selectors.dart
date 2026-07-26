import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../core/constants/app_strings.dart';
import '../controller/product_details_controller.dart';

class ProductDetailsSelectors extends GetView<ProductDetailsController> {
  const ProductDetailsSelectors({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildColorSelection(context),
        const SizedBox(height: 32),
        _buildSizeSelection(context),
        const SizedBox(height: 16),
        _buildAiRecommendation(context),
      ],
    );
  }

  Widget _buildColorSelection(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        RichText(
          text: TextSpan(
            text: 'COLOR — ',
            style: GoogleFonts.nunitoSans(
              fontSize: 12,
              fontWeight: FontWeight.bold,
              letterSpacing: 2.0,
              color: Theme.of(context).colorScheme.onSurface,
            ),
            children: [
              TextSpan(
                text: 'Oatmeal',
                style: GoogleFonts.nunitoSans(
                  fontWeight: FontWeight.normal,
                  color: Theme.of(context).colorScheme.onSurfaceVariant,
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 12),
        Wrap(
          spacing: 16,
          children: const [
            _ColorButton(color: Color(0xFFF5F1EA), label: 'Oatmeal'),
            _ColorButton(color: Color(0xFFBC7C68), label: 'Terracotta'),
            _ColorButton(color: Color(0xFF839788), label: 'Sage'),
          ],
        ),
      ],
    );
  }

  Widget _buildSizeSelection(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text(
              AppStrings.pdpSizeTitle.toUpperCase(),
              style: GoogleFonts.nunitoSans(
                fontSize: 12,
                fontWeight: FontWeight.bold,
                letterSpacing: 2.0,
                color: Theme.of(context).colorScheme.onSurface,
              ),
            ),
            Container(
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    color: Theme.of(context).colorScheme.primary.withValues(alpha: 0.3),
                    width: 1,
                  ),
                ),
              ),
              child: Text(
                AppStrings.pdpSizeGuide.toUpperCase(),
                style: GoogleFonts.nunitoSans(
                  fontSize: 10,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 2.0,
                  color: Theme.of(context).colorScheme.primary,
                ),
              ),
            ),
          ],
        ),
        const SizedBox(height: 12),
        Row(
          children: AppStrings.pdpSizes
              .map((size) => Expanded(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 4.0),
                      child: _SizeButton(size: size),
                    ),
                  ))
              .toList(),
        ),
      ],
    );
  }

  Widget _buildAiRecommendation(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.surfaceContainerLow,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(
          color: Theme.of(context).colorScheme.outlineVariant.withValues(alpha: 0.2),
        ),
      ),
      child: Row(
        children: [
          Icon(Icons.auto_awesome, color: Theme.of(context).colorScheme.primary),
          const SizedBox(width: 12),
          Expanded(
            child: RichText(
              text: TextSpan(
                text: 'Based on your ',
                style: GoogleFonts.nunitoSans(
                  fontSize: 12,
                  color: Theme.of(context).colorScheme.onSurfaceVariant,
                  height: 1.5,
                ),
                children: const [
                  TextSpan(
                    text: 'previous purchases',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  TextSpan(text: ' and profile, we recommend size '),
                  TextSpan(
                    text: 'Medium',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  TextSpan(text: ' for the best fit.'),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _ColorButton extends GetView<ProductDetailsController> {
  final Color color;
  final String label;

  const _ColorButton({
    required this.color,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      final isSelected = controller.selectedColor.value == label;
      return GestureDetector(
        onTap: () => controller.setColor(label),
        child: Container(
          width: 40,
          height: 40,
          decoration: BoxDecoration(
            color: color,
            shape: BoxShape.circle,
            border: Border.all(
              color: isSelected ? Theme.of(context).colorScheme.primary : Theme.of(context).colorScheme.outlineVariant,
              width: isSelected ? 2 : 1,
            ),
            boxShadow: isSelected
                ? [
                    BoxShadow(
                      color: Theme.of(context).colorScheme.primary.withValues(alpha: 0.2),
                      spreadRadius: 2,
                      blurRadius: 0,
                    )
                  ]
                : null,
          ),
        ),
      );
    });
  }
}

class _SizeButton extends GetView<ProductDetailsController> {
  final String size;

  const _SizeButton({
    required this.size,
  });

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      final isSelected = controller.selectedSize.value == size;
      return GestureDetector(
        onTap: () => controller.setSize(size),
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 12),
          decoration: BoxDecoration(
            color: isSelected ? Theme.of(context).colorScheme.primary.withValues(alpha: 0.05) : Colors.transparent,
            borderRadius: BorderRadius.circular(12),
            border: Border.all(
              color: isSelected ? Theme.of(context).colorScheme.primary : Theme.of(context).colorScheme.outlineVariant,
              width: 2,
            ),
          ),
          alignment: Alignment.center,
          child: Text(
            size,
            style: GoogleFonts.nunitoSans(
              fontSize: 14,
              fontWeight: FontWeight.bold,
              color: isSelected ? Theme.of(context).colorScheme.primary : Theme.of(context).colorScheme.onSurface,
            ),
          ),
        ),
      );
    });
  }
}
