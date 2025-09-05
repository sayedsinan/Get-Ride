import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_ride/view/auth/sign_up.dart';
import 'package:get_ride/view/home/home_page.dart';
import 'package:get_ride/view/widget/input_field.dart';
import 'package:get_ride/view/widget/my_button.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController emailController = TextEditingController();
    TextEditingController passwordController = TextEditingController();

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
        title: const Text("Sign In", style: TextStyle(color: Colors.black)),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Welcome back!",
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            const Text(
              "Sign in to continue your journey",
              style: TextStyle(fontSize: 16, color: Colors.grey),
            ),
            const SizedBox(height: 24),
            const Text("Email"),
            const SizedBox(height: 2),
            InputField(
              hintText: "Enter your email",
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
            const SizedBox(height: 8),
            Align(
              alignment: Alignment.centerRight,
              child: TextButton(
                onPressed: () {},
                child: const Text("Forgot password?"),
              ),
            ),
            const SizedBox(height: 10),
            Align(
              alignment: Alignment.center,
              child: MyButton(
                height: 50,
                width: double.infinity,
                borderRadius: 8,
                buttonColor: Colors.blue,
                textColor: Colors.white,
                text: "Sign in",
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
                onTap: () {
                  Get.to(()=>HomePage());
                },
              ),
            ),
            const SizedBox(height: 16),
            Align(
              alignment: Alignment.center,
              child: GestureDetector(
                onTap: () {
                  Get.to(() => SignUp());
                },
                child: const Text(
                  "Don't have an account? Sign up",
                  style: TextStyle(color: Colors.blue),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
