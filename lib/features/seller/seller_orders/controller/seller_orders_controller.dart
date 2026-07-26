import 'package:get/get.dart';

class SellerOrdersController extends GetxController {
  final RxString selectedStatusFilter = 'All'.obs;
  final List<String> statusFilters = ['All', 'Pending', 'Processing', 'Shipped', 'Delivered'];

  final RxList<Map<String, String>> orders = <Map<String, String>>[
    {
      'id': '#ORD-9281',
      'customer': 'Aria Vance',
      'item': 'Raw Silk Tunic (Oatmeal / Size M)',
      'amount': '\$185.00',
      'status': 'Pending',
      'date': 'Jul 26, 2026',
      'address': '742 Evergreen Terrace, Springfield',
    },
    {
      'id': '#ORD-9280',
      'customer': 'Julian Croft',
      'item': 'Linen Wide-Leg Pant (Sand / Size L)',
      'amount': '\$210.00',
      'status': 'Processing',
      'date': 'Jul 26, 2026',
      'address': '104 West 57th St, New York, NY',
    },
    {
      'id': '#ORD-9279',
      'customer': 'Elena Rostova',
      'item': 'Vesper Wrap Dress (Black / Size S)',
      'amount': '\$245.00',
      'status': 'Shipped',
      'date': 'Jul 25, 2026',
      'address': '450 Sutter St, San Francisco, CA',
    },
    {
      'id': '#ORD-9275',
      'customer': 'Marcus Thorne',
      'item': 'Artisan Raffia Tote',
      'amount': '\$160.00',
      'status': 'Delivered',
      'date': 'Jul 24, 2026',
      'address': '1200 Ocean Dr, Miami, FL',
    },
  ].obs;

  void markAsShipped(int index) {
    orders[index]['status'] = 'Shipped';
    orders.refresh();
  }
}
