import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SecurityPrivacyController extends GetxController {
  final isTwoFactorEnabled = true.obs;
  final isBiometricEnabled = false.obs;

  void toggleTwoFactor(bool value) {
    isTwoFactorEnabled.value = value;
    Get.snackbar(
      'Two-Factor Authentication',
      value ? 'Two-Factor Authentication enabled' : 'Two-Factor Authentication disabled',
      snackPosition: SnackPosition.BOTTOM,
    );
  }

  void toggleBiometric(bool value) {
    isBiometricEnabled.value = value;
    Get.snackbar(
      'Biometric Login',
      value ? 'Biometric Login enabled' : 'Biometric Login disabled',
      snackPosition: SnackPosition.BOTTOM,
    );
  }

  void changePassword() {
    Get.defaultDialog(
      title: 'Change Password',
      content: const Column(
        children: [
          TextField(
            obscureText: true,
            decoration: InputDecoration(labelText: 'Current Password'),
          ),
          SizedBox(height: 12),
          TextField(
            obscureText: true,
            decoration: InputDecoration(labelText: 'New Password'),
          ),
        ],
      ),
      textConfirm: 'Update',
      textCancel: 'Cancel',
      onConfirm: () {
        Get.back();
        Get.snackbar('Password Updated', 'Your password has been successfully changed.');
      },
    );
  }

  void clearSearchHistory() {
    Get.defaultDialog(
      title: 'Clear Search History',
      middleText: 'Are you sure you want to remove your recent searches across devices?',
      textConfirm: 'Clear',
      textCancel: 'Cancel',
      onConfirm: () {
        Get.back();
        Get.snackbar('Search History Cleared', 'Your search history has been deleted.');
      },
    );
  }

  void requestAccountDeletion() {
    Get.defaultDialog(
      title: 'Request Account Deletion',
      middleText: 'Submitting an account deletion request will begin the 30-day grace period before account data removal.',
      textConfirm: 'Submit Request',
      textCancel: 'Cancel',
      confirmTextColor: Colors.white,
      buttonColor: Colors.red,
      onConfirm: () {
        Get.back();
        Get.snackbar('Request Submitted', 'Check your registered email for account deletion instructions.');
      },
    );
  }
}
