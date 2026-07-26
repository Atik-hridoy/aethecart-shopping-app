import 'package:get/get.dart';

class SellerCustomizationController extends GetxController {
  final RxString storeName = 'Aether Atelier'.obs;
  final RxString storeTagline = 'Curated Minimalist Garments & Sustainable Living'.obs;
  final RxString selectedTheme = 'Serene Minimalist'.obs;

  final List<String> themePresets = [
    'Serene Minimalist',
    'Urban Charcoal',
    'Warm Terracotta',
    'Botanical Earth',
  ];

  final RxBool isSaving = false.obs;

  void saveCustomization() async {
    isSaving.value = true;
    await Future.delayed(const Duration(seconds: 1));
    isSaving.value = false;

    Get.snackbar(
      'Store Updated',
      'Your storefront branding and aesthetics have been saved.',
      snackPosition: SnackPosition.TOP,
    );
  }
}
