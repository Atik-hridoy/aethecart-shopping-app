import 'package:get/get.dart';
import '../../../../routes/app_pages.dart';

class SellerProductsController extends GetxController {
  final RxString searchQuery = ''.obs;
  final RxString selectedFilter = 'All'.obs;

  final List<String> filterOptions = ['All', 'In Stock', 'Low Stock', 'Draft'];

  final RxList<Map<String, dynamic>> products = <Map<String, dynamic>>[
    {
      'id': 'PROD-1',
      'title': 'Raw Silk Tunic',
      'category': 'Apparel',
      'price': '\$185.00',
      'stock': 24,
      'status': 'In Stock',
      'sales': 48,
    },
    {
      'id': 'PROD-2',
      'title': 'Linen Wide-Leg Pant',
      'category': 'Apparel',
      'price': '\$210.00',
      'stock': 12,
      'status': 'In Stock',
      'sales': 35,
    },
    {
      'id': 'PROD-3',
      'title': 'Vesper Wrap Dress',
      'category': 'Apparel',
      'price': '\$245.00',
      'stock': 3,
      'status': 'Low Stock',
      'sales': 62,
    },
    {
      'id': 'PROD-4',
      'title': 'Artisan Raffia Tote',
      'category': 'Accessories',
      'price': '\$160.00',
      'stock': 18,
      'status': 'In Stock',
      'sales': 29,
    },
    {
      'id': 'PROD-5',
      'title': 'Sand Texture Kimono',
      'category': 'Apparel',
      'price': '\$290.00',
      'stock': 0,
      'status': 'Draft',
      'sales': 0,
    },
  ].obs;

  void navigateToAddProduct() {
    Get.toNamed(Routes.sellerAddProduct);
  }

  void toggleStatus(int index) {
    final item = products[index];
    if (item['status'] == 'In Stock') {
      item['status'] = 'Draft';
    } else {
      item['status'] = 'In Stock';
    }
    products.refresh();
  }

  void deleteProduct(int index) {
    products.removeAt(index);
  }
}
