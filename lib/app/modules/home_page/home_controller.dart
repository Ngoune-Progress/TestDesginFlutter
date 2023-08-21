import 'dart:developer';
import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../../routes/App_routes.dart';

class HomeController extends GetxController {
  final GlobalKey<FormState> loginFormKey =
      GlobalKey<FormState>(debugLabel: '__loginFormKey__');
  final phoneController = TextEditingController();
  final passwordController = TextEditingController();
  final countryController = TextEditingController();

  @override
  void onClose() {
    phoneController.dispose();
    passwordController.dispose();
    countryController.dispose();
    super.onClose();
  }

  String? validator(String? value) {
    log('validatoooor');

    if (value != null && value.isEmpty) {
      return 'Please this field must be filled';
    }
    return null;
  }

  Future<int> login() async {
    log('${phoneController.text}, ${passwordController.text},${countryController.text}');
    if (loginFormKey.currentState!.validate()) {
      try {
        int val = await loginn(phoneController.text, passwordController.text,
            countryController.text);
        return val;
      } catch (err, _) {
        // message = 'There is an issue with the app during request the data, '
        //         'please contact admin for fixing the issues ' +

        passwordController.clear();
        rethrow;
      }
    } else {
      throw Exception('An error occurred, invalid inputs value');
    }
  }

  Future<int> loginn(String phone, String password, String country) async {
    final url = Uri.parse('https://stagingapi.chipchip.social/v1/users/login');
    final response = await http.post(
      url,
      headers: {'Content-Type': 'application/json'},
      body: jsonEncode({
        'phone': phone,
        'password': password,
        'country': country,
      }),
    );

    if (response.statusCode == 200) {
      // Login successful
      final token = jsonDecode(response.body)['token'];
      print('Login successful. Token: $token');
    } else {
      // Login failed
            print(response.body.toString());

      print('Login failed');
    }
    return response.statusCode;
  }
}
