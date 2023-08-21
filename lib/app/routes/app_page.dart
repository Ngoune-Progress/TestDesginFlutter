import 'package:get/route_manager.dart';


import '../modules/home_page/home_binding.dart';
import '../modules/home_page/home_page.dart';
import '../modules/product_page/product_binding.dart';
import '../modules/product_page/product_page.dart';
import '../modules/signup_page/signup_binding.dart';
import '../modules/signup_page/signup_page.dart';
import 'app_routes.dart';

class AppPage {
  static final List<GetPage> pages = [
    GetPage(
        name: AppRoutes.home, page: () => HomePage(), binding: HomeBinging()),
    GetPage(
        name: AppRoutes.signup,
        page: () => SignUpPage(),
        binding: SignUpBinding()),
        GetPage(
        name: AppRoutes.product,
        page: () => ProductPage(),
        binding: ProductBinding())
  ];
  
  
}
