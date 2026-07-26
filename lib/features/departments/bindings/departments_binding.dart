import 'package:get/get.dart';
import '../controller/departments_controller.dart';

class DepartmentsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DepartmentsController>(() => DepartmentsController());
  }
}
