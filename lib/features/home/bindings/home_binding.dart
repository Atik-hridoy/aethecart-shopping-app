import 'package:get/get.dart';
import '../controller/home_controller.dart';
import '../../profile/controller/profile_controller.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HomeController());
    Get.lazyPut(() => ProfileController());
  }
}
