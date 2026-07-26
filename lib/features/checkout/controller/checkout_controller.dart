import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CheckoutController extends GetxController {
  final saveForFuture = false.obs;
  final currentStep = 0.obs; // 0: Address, 1: Shipping, 2: Payment
  final pageController = PageController();

  void toggleSaveForFuture(bool value) {
    saveForFuture.value = value;
  }

  void nextStep() {
    if (currentStep.value < 2) {
      currentStep.value++;
      pageController.animateToPage(
        currentStep.value,
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    }
  }

  void previousStep() {
    if (currentStep.value > 0) {
      currentStep.value--;
      pageController.animateToPage(
        currentStep.value,
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    }
  }

  @override
  void onClose() {
    pageController.dispose();
    super.onClose();
  }
}
