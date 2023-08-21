import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'app/modules/home_page/home_binding.dart';
import 'app/modules/home_page/home_page.dart';
import 'app/routes/app_page.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.white),
        useMaterial3: true,
      ),
      initialBinding: HomeBinging(),
      
      home: const HomePage(),
      getPages: AppPage.pages,
    );
  }
}
