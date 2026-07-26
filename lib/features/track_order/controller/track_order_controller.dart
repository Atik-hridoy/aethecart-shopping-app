import 'package:get/get.dart';

class TrackOrderController extends GetxController {
  final currentStep = 3.obs; // 0: placed, 1: processed, 2: shipped, 3: out for delivery
}
