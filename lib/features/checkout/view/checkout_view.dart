import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controller/checkout_controller.dart';
import '../widget/checkout_app_bar.dart';
import '../widget/checkout_form.dart';
import '../widget/checkout_progress.dart';
import '../widget/checkout_summary.dart';
import '../widget/checkout_shipping_form.dart';
import '../widget/checkout_payment_form.dart';

class CheckoutView extends GetView<CheckoutController> {
  const CheckoutView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      appBar: const CheckoutAppBar(),
      body: SingleChildScrollView(
        padding: const EdgeInsets.only(top: 24, left: 24, right: 24, bottom: 120),
        child: Column(
          children: [
            const CheckoutProgress(),
            const SizedBox(height: 48),
            LayoutBuilder(
              builder: (context, constraints) {
                if (constraints.maxWidth >= 1024) {
                  return Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        flex: 7,
                        child: SizedBox(
                          height: 650,
                          child: _buildPageView(),
                        ),
                      ),
                      const SizedBox(width: 48),
                      Expanded(
                        flex: 5,
                        child: _buildSummarySection(),
                      ),
                    ],
                  );
                }
                return Column(
                  children: [
                    SizedBox(
                      height: 650,
                      child: _buildPageView(),
                    ),
                    const SizedBox(height: 48),
                    _buildSummarySection(),
                  ],
                );
              },
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildPageView() {
    return PageView(
      controller: controller.pageController,
      physics: const NeverScrollableScrollPhysics(), // Disable swipe to force button use
      children: const [
        CheckoutAddressForm(),
        CheckoutShippingForm(),
        CheckoutPaymentForm(),
      ],
    );
  }

  Widget _buildSummarySection() {
    return const Column(
      children: [
        CheckoutSummary(),
      ],
    );
  }
}
