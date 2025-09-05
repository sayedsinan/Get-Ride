import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_ride/controller/auth_controller.dart';
import 'package:get_ride/view/auth/login_page.dart';

void main() async {
  Get.put(AuthController());
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(debugShowCheckedModeBanner: false, home: LoginPage());
  }
}
