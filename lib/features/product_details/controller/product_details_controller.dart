import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../widget/product_details_contact_seller_sheet.dart';
import '../widget/product_details_size_guide_dialog.dart';
import '../widget/product_details_store_showcase_dialog.dart';

class ProductDetailsController extends GetxController {
  final RxString selectedColor = 'Oatmeal'.obs;
  final RxString selectedSize = 'M'.obs;
  final RxInt currentGalleryIndex = 0.obs;

  void setColor(String color) {
    selectedColor.value = color;
  }

  void setSize(String size) {
    selectedSize.value = size;
  }

  void setGalleryIndex(int index) {
    currentGalleryIndex.value = index;
  }

  void openSizeGuideModal(BuildContext context) {
    ProductDetailsSizeGuideDialog.show(context);
  }

  void contactSeller([BuildContext? context]) {
    final ctx = context ?? Get.context;
    if (ctx != null) {
      ContactSellerBottomSheet.show(ctx);
    }
  }

  void visitStore([BuildContext? context]) {
    final ctx = context ?? Get.context;
    if (ctx != null) {
      StoreShowcaseDialog.show(ctx);
    }
  }

  void openWriteReviewModal() {
    Get.snackbar(
      'Write a Review',
      'Opening review composer for this product...',
      snackPosition: SnackPosition.BOTTOM,
    );
  }

  void goBack() {
    Get.back();
  }
}
