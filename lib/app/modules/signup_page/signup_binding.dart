
import 'package:get/get.dart';
import 'package:testdesign/app/modules/signup_page/signup_controller.dart';

class SignUpBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SignUpController());
  }
}
