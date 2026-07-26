import 'package:get/get.dart';
import '../../explore/controller/explore_controller.dart';
import '../../profile/controller/profile_controller.dart';
import '../controller/home_controller.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HomeController());
    Get.lazyPut(() => ExploreController());
    Get.lazyPut(() => ProfileController());
  }
}
