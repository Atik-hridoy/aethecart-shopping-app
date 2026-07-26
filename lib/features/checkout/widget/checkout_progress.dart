import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:get/get.dart';
import '../controller/checkout_controller.dart';

class CheckoutProgress extends GetView<CheckoutController> {
  const CheckoutProgress({super.key});

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      final step = controller.currentStep.value;
      return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          _buildStep(context, '1', 'Address', step >= 0),
          _buildDivider(context),
          _buildStep(context, '2', 'Shipping', step >= 1),
          _buildDivider(context),
          _buildStep(context, '3', 'Payment', step >= 2),
        ],
      );
    });
  }

  Widget _buildStep(BuildContext context, String number, String label, bool isActive) {
    final bgColor = isActive ? Theme.of(context).colorScheme.primary : Theme.of(context).colorScheme.surfaceContainerHigh;
    final fgColor = isActive ? Theme.of(context).colorScheme.onPrimary : Theme.of(context).colorScheme.outline;
    return Column(
      children: [
        Container(
          width: 40,
          height: 40,
          decoration: BoxDecoration(
            color: bgColor,
            shape: BoxShape.circle,
            boxShadow: isActive
                ? [
                    BoxShadow(
                      color: Theme.of(context).colorScheme.primary.withValues(alpha: 0.3),
                      blurRadius: 8,
                      offset: const Offset(0, 2),
                    )
                  ]
                : null,
          ),
          alignment: Alignment.center,
          child: Text(
            number,
            style: TextStyle(
              color: fgColor,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        const SizedBox(height: 8),
        Text(
          label,
          style: GoogleFonts.nunitoSans(
            fontSize: 12,
            fontWeight: FontWeight.bold,
            color: isActive ? Theme.of(context).colorScheme.primary : Theme.of(context).colorScheme.outline,
          ),
        ),
      ],
    );
  }

  Widget _buildDivider(BuildContext context) {
    return Container(
      width: 32,
      height: 1,
      margin: const EdgeInsets.symmetric(horizontal: 16).copyWith(bottom: 24),
      color: Theme.of(context).colorScheme.outlineVariant,
    );
  }
}
