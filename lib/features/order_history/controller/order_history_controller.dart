import 'package:get/get.dart';

enum OrderStatus {
  onTheWay,
  delivered,
}

class OrderItem {
  final String id;
  final String title;
  final String date;
  final OrderStatus status;
  final double price;
  final String imageUrl;

  const OrderItem({
    required this.id,
    required this.title,
    required this.date,
    required this.status,
    required this.price,
    required this.imageUrl,
  });
}

class OrderHistoryController extends GetxController {
  final searchQuery = ''.obs;
  final selectedTimeframe = 'Last 3 months'.obs;

  final timeframes = const [
    'Last 3 months',
    'Last 6 months',
    'Year 2023',
    'Older',
  ];

  final orders = <OrderItem>[
    const OrderItem(
      id: '#AC-88291',
      title: 'Artisan Ceramic Lamp',
      date: 'Oct 24, 2023',
      status: OrderStatus.onTheWay,
      price: 128.50,
      imageUrl:
          'https://lh3.googleusercontent.com/aida-public/AB6AXuCDdd03tIN1OLk1Myzeob_UWXiWruRivDPXi9vCliOdnxXZaOT_on_79AslOifREbQvY0oYolsLI_sdcmhWf6Bv-zazEL42k2eXegLYTM23mXBXxDcBmBdGMvFa2dy7ot2kz3IoM7ayP2d4NA9ZKfGe1CV0cIkxjLlCLLwtgY0fgX64P63SniLqxVjNmkljA6lLv9rBv8t6WCrx8OuoElXkjnAkcnlxKOgucKx8N3hyIoVS8yjn315cAaDYKSr09vL7VKb5n_Bq0_4_',
    ),
    const OrderItem(
      id: '#AC-87102',
      title: 'Organic Cotton Linen Set',
      date: 'Oct 12, 2023',
      status: OrderStatus.delivered,
      price: 210.00,
      imageUrl:
          'https://lh3.googleusercontent.com/aida-public/AB6AXuAu02VUJJXQPcbYQgDR4tAh0aA9vDmJn5CmWKBaLt2vmAqwTjLExzECo6D2xqBm0QIlTTTEc2klM1diPiVI-W3Xk7NhAUlpfAnrW7uldqTpQjXEcGInEZhR6pCeyGxrUodHXoyHjAyx30bu40BtdaUr2myl6hQvjwz0TpQOYRqc_i8s5ltSSFnR6T-tkNnf-nKcRmGAJOyD2p0hT-LHu71fRPGtLVnDgkKIk44AqH47PgeDW3W9p3c5XQw82XC45FHdkqwHg1kyk7VL',
    ),
    const OrderItem(
      id: '#AC-85943',
      title: 'Botanical Candle Bundle',
      date: 'Sep 28, 2023',
      status: OrderStatus.delivered,
      price: 75.25,
      imageUrl:
          'https://lh3.googleusercontent.com/aida-public/AB6AXuDDRTWm_qfC0ByXz8yzNbLc6KWvACcOYbhTJQFfoOqZL-hQzANT5ja4MSJ2ZG8EGosFKERb-S0KAE6xuRl255MSQoeRqjcjx0NJsLUyZl5E6VfKQAIAGCpea0WKJNX4LTZ7uqKx9H4OzzrnuolsPLvAn3ZWs8MAWieqLgOax5VWbFV6-MLcDvC6gVrjtyTtAEPZaaRRfvyxRYcbJdsLxcjF_p4jeanNpS2SQQY_PKPi09B9js7llaT-PNOHMfxzw-d1PKq28CYKL0Fg',
    ),
  ].obs;

  List<OrderItem> get filteredOrders {
    if (searchQuery.value.trim().isEmpty) {
      return orders;
    }
    final q = searchQuery.value.toLowerCase();
    return orders.where((order) {
      return order.title.toLowerCase().contains(q) ||
          order.id.toLowerCase().contains(q);
    }).toList();
  }

  void updateSearch(String value) {
    searchQuery.value = value;
  }

  void updateTimeframe(String? value) {
    if (value != null) {
      selectedTimeframe.value = value;
    }
  }

  void loadMore() {
    Get.snackbar('Order History', 'Loading older order records...');
  }
}
