import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';
import 'package:testdesign/app/modules/signup_page/signup_controller.dart';


import '../../../utils/image_path.dart';
import '../../routes/App_routes.dart';
import '../widget/LoadingOverlay.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<SignUpController>(
        builder: (controller) => Scaffold(
                body: SingleChildScrollView(
              child: Stack(
                children: [
                  Container(
                      height: 500,
                      width: MediaQuery.of(context).size.width,
                      child: Image.asset(
                        backgroundImage,
                        fit: BoxFit.cover,
                      )),
                  Container(
                    height: 300,
                    width: MediaQuery.of(context).size.width,
                    margin: EdgeInsets.only(top: 450),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(50),
                            topRight: Radius.circular(50))),
                  ),
                  Container(
                      margin: EdgeInsets.only(top: 500, left: 30, right: 30),
                      child: Form(
                        key: controller.loginFormKey,
                        child: Column(
                          children: [
                            Container(
                              alignment: Alignment.topLeft,
                              child: Text(
                                "Sign Up",
                                style: TextStyle(
                                    fontSize: 25, fontWeight: FontWeight.bold),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(top: 20),
                              child: TextFormField(
                                controller: controller.phoneController,
                                decoration: InputDecoration(
                                  hintText: "phone",
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(50)),
                                ),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(top: 20),
                              child: TextFormField(
                                controller: controller.passwordController,
                                validator: controller.validator,
                                decoration: InputDecoration(
                                  hintText: "Password",
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(50)),
                                ),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(top: 20),
                              child: TextFormField(
                                controller: controller.countryController,
                                decoration: InputDecoration(
                                  hintText: "Country",
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(50)),
                                ),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(top: 50),
                              child: MaterialButton(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(80.0)),
                                color: Colors.amber,
                                onPressed: () async {
                                  if (controller.loginFormKey.currentState!
                                      .validate()) {
                                    LoadingOverlay.show(message: 'Login...');
                                    try {
                                      int val = await controller.signUp();
                                      if (val == 200) {
                                        Get.toNamed(AppRoutes.product);
                                      } else {
                                        LoadingOverlay.hide();
                                        final snackBar = SnackBar(
                                          content: const Text(
                                              'Please fill form correctly'),
                                          backgroundColor: (Colors.black12),
                                          action: SnackBarAction(
                                            label: 'dismiss',
                                            onPressed: () {},
                                          ),
                                        );
                                        ScaffoldMessenger.of(context)
                                            .showSnackBar(snackBar);
                                      }
                                    } catch (err, _) {
                                      printError(info: err.toString());
                                      LoadingOverlay.hide();
                                      Get.snackbar(
                                        "Error",
                                        err.toString(),
                                        snackPosition: SnackPosition.TOP,
                                        backgroundColor:
                                            Colors.red.withOpacity(.75),
                                        colorText: Colors.white,
                                        icon: const Icon(Icons.error,
                                            color: Colors.white),
                                        shouldIconPulse: true,
                                        barBlur: 20,
                                      );
                                    } finally {}

                                    controller.loginFormKey.currentState!
                                        .save();
                                  }
                                },
                                textColor: Colors.black,
                                child: Container(
                                  width: 400,
                                  height: 80,
                                  child: Center(
                                    child: Text(
                                      "Sign Up",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          fontSize: 25,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              child: TextButton(
                                onPressed: () {
                                  try {
                                    Get.toNamed(AppRoutes.home);
                                  } catch (err, _) {
                                    printError(info: err.toString());
                                  }
                                },
                                child: Text(
                                  "Already have an account ?",
                                  style: TextStyle(
                                      fontSize: 20, color: Colors.amber),
                                ),
                              ),
                            )
                          ],
                        ),
                      ))
                ],
              ),
            )));
  }
}
