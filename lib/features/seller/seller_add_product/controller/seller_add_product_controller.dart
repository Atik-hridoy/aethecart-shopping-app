import 'package:get/get.dart';
import '../../../../routes/app_pages.dart';

class SellerAddProductController extends GetxController {
  final RxString selectedCategory = 'Apparel'.obs;
  final List<String> categories = ['Apparel', 'Sportswear', 'Home Essentials', 'Wellness', 'Accessories'];

  final List<String> availableSizeOptions = ['XS', 'S', 'M', 'L', 'XL', 'XXL', 'One Size'];
  final RxList<String> selectedSizes = <String>['S', 'M', 'L'].obs;

  final RxString collectionTag = 'Natural Linens Collection'.obs;
  final RxString colorsInput = 'Oatmeal, Terracotta, Sage'.obs;
  final RxString compareAtPrice = '220.00'.obs;

  final RxString materialsCare = '100% Raw Hand-loomed Silk. Gentle hand wash in cool water with organic detergent. Dry flat in shade.'.obs;
  final RxString sustainabilityImpact = 'Sourced from a women-led collective in northern Thailand. Zero synthetic chemicals used in dyeing process.'.obs;
  final RxString shippingReturns = 'Complimentary carbon-neutral shipping on orders over \$150. Returns accepted within 30 days.'.obs;

  final RxBool isPublishing = false.obs;

  void toggleSize(String size) {
    if (selectedSizes.contains(size)) {
      selectedSizes.remove(size);
    } else {
      selectedSizes.add(size);
    }
  }

  void publishProduct() async {
    isPublishing.value = true;
    await Future.delayed(const Duration(seconds: 1));
    isPublishing.value = false;

    Get.snackbar(
      'Product Published',
      'Your item is now live with full PDP details in the AetherCart marketplace!',
      snackPosition: SnackPosition.TOP,
    );

    Get.offNamed(Routes.sellerProducts);
  }
}
