import 'package:get/get.dart';
import '../controller/saved_sizes_controller.dart';

class SavedSizesBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SavedSizesController());
  }
}
