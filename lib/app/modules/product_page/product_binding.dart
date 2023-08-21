
import 'package:get/get.dart';
import 'package:testdesign/app/modules/product_page/product_controller.dart';

class ProductBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ProductController());
  }
}
