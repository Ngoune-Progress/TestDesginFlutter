import 'package:get/get.dart';

import 'home_controller.dart';

class HomeBinging extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HomeController());
  }
}
