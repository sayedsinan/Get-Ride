import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_ride/controller/auth_controller.dart';
import 'package:get_ride/view/home/home_page.dart';
import 'package:get_ride/view/widget/input_field.dart';
import 'package:get_ride/view/widget/my_button.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    final AuthController authController = Get.find<AuthController>();
    TextEditingController emailController = TextEditingController();
    TextEditingController passwordController = TextEditingController();

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
        title: const Text("Sign Up", style: TextStyle(color: Colors.black)),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Create an account",
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 8),
              const Text(
                "Join thousands of daily commuters",
                style: TextStyle(fontSize: 16, color: Colors.grey),
              ),
              const SizedBox(height: 24),
              const Text("Full name "),
              const SizedBox(height: 2),
              InputField(
                hintText: "Enter your Full name",
                controller: emailController,
                height: 50,
                width: double.infinity,
                borderRadius: 10,
              ),
              const SizedBox(height: 5),

              const Text("Email "),
              const SizedBox(height: 2),
              InputField(
                hintText: "Enter your email",
                controller: emailController,
                height: 50,
                width: double.infinity,
                borderRadius: 10,
              ),
              const SizedBox(height: 5),
              const Text("Phone number "),
              const SizedBox(height: 2),
              InputField(
                hintText: "Enter your Phone number",
                controller: emailController,
                height: 50,
                width: double.infinity,
                borderRadius: 10,
              ),
              const SizedBox(height: 5),

              const Text("Password"),
              const SizedBox(height: 2),
              InputField(
                hintText: "Enter your password",
                controller: passwordController,
                height: 50,
                width: double.infinity,
                borderRadius: 10,
                isPassword: true,
              ),
              const Text("Confirm Password"),
              const SizedBox(height: 2),
              InputField(
                hintText: "Enter your Confirm password",
                controller: passwordController,
                height: 50,
                width: double.infinity,
                borderRadius: 10,
                isPassword: true,
              ),
              Row(
                children: [
                  Obx(
                    () => Checkbox(
                      value: authController.checked.value,
                      onChanged: (value) {
                        authController.toggleChecked(value!);
                      },
                    ),
                  ),
                  Text(
                    "I agree to the Terms of Service and Privacy Policy",
                    style: TextStyle(fontSize: 12),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              Obx(() {
                return Align(
                  alignment: Alignment.center,
                  child: MyButton(
                    height: 50,
                    width: double.infinity,
                    borderRadius: 8,
                    buttonColor:
                        authController.checked.value
                            ? Colors.blue
                            : Colors.blue.shade300,
                    textColor: Colors.white,
                    text: "Create account",
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                    onTap: () {
                      Get.to(HomePage());
                    },
                  ),
                );
              }),
              const SizedBox(height: 16),
              Align(
                alignment: Alignment.center,
                child: GestureDetector(
                  onTap: () {
                    Get.back();
                  },
                  child: const Text(
                    "Already have an account? Sign up",
                    style: TextStyle(color: Colors.blue),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
