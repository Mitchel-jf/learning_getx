import 'package:get/get.dart';
import 'package:learning_getx/main_controller.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(MainController());
  }
}
