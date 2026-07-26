import 'package:get/get.dart';
import '../../../../routes/app_pages.dart';

class SellerDashboardController extends GetxController {
  final RxString totalRevenue = '\$12,850.00'.obs;
  final RxInt totalOrders = 142.obs;
  final RxInt activeProducts = 28.obs;
  final RxDouble sellerRating = 4.9.obs;

  final RxList<Map<String, String>> recentOrders = <Map<String, String>>[
    {
      'id': '#ORD-9281',
      'customer': 'Aria Vance',
      'item': 'Raw Silk Tunic',
      'amount': '\$185.00',
      'status': 'Pending',
      'time': '10 mins ago',
    },
    {
      'id': '#ORD-9280',
      'customer': 'Julian Croft',
      'item': 'Linen Wide-Leg Pant',
      'amount': '\$210.00',
      'status': 'Processing',
      'time': '1 hour ago',
    },
    {
      'id': '#ORD-9279',
      'customer': 'Elena Rostova',
      'item': 'Vesper Wrap Dress',
      'amount': '\$245.00',
      'status': 'Shipped',
      'time': '3 hours ago',
    },
  ].obs;

  void navigateToAddProduct() {
    Get.toNamed(Routes.sellerAddProduct);
  }

  void navigateToProducts() {
    Get.toNamed(Routes.sellerProducts);
  }

  void navigateToOrders() {
    Get.toNamed(Routes.sellerOrders);
  }
}
