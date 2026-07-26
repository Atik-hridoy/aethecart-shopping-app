import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PrivacySettingsController extends GetxController {
  final recommendationsEnabled = true.obs;
  final locationEnabled = true.obs;
  final marketingEnabled = false.obs;
  final accountVisibility = 'member'.obs; // 'member' or 'public'

  void toggleRecommendations(bool value) {
    recommendationsEnabled.value = value;
    _showToast('Personalized recommendations updated');
  }

  void toggleLocation(bool value) {
    locationEnabled.value = value;
    _showToast('Location access updated');
  }

  void toggleMarketing(bool value) {
    marketingEnabled.value = value;
    _showToast('Marketing email settings updated');
  }

  void setVisibility(String value) {
    accountVisibility.value = value;
    _showToast('Account visibility updated to ${value == 'member' ? 'Member Only' : 'Public'}');
  }

  void requestExport() {
    Get.snackbar(
      'Data Export',
      'Your request for a full data archive (CSV) has been submitted. Check your email shortly.',
    );
  }

  void deactivateAccount() {
    Get.defaultDialog(
      title: 'Deactivate Account',
      middleText: 'Are you sure you want to deactivate your account? This action is irreversible.',
      textConfirm: 'Deactivate',
      textCancel: 'Cancel',
      onConfirm: () {
        Get.back();
        Get.snackbar('Account Deactivated', 'Your account and associated data have been scheduled for deletion.');
      },
    );
  }

  void _showToast(String message) {
    Get.rawSnackbar(
      messageText: Row(
        children: [
          const Icon(Icons.check_circle, color: Color(0xFF8ECF9E), size: 20),
          const SizedBox(width: 10),
          Text(
            message,
            style: const TextStyle(color: Color(0xFFFAFAFA), fontSize: 14),
          ),
        ],
      ),
      snackPosition: SnackPosition.BOTTOM,
      borderRadius: 999,
      margin: const EdgeInsets.only(bottom: 90, left: 32, right: 32),
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 14),
      duration: const Duration(seconds: 3),
    );
  }
}
