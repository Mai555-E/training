import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../resources/constants.dart';
import '../../../resources/routes.dart';
import '../widgets/auth_shareable_widget.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffECE5DD),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 23, vertical: 15),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const CustomImage(width: 230, height: 230),
              const Padding(padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10), child: CustomText(title: "Login to your account")),
              const Padding(
                  padding: EdgeInsets.only(top: 15, bottom: 10),
                  child: CustomTextFormField(hintText: 'Enter your email', labelText: 'Email', icon: Icons.email, isExist: false)),
              const SizedBox(height: 10),
              const CustomTextFormField(hintText: 'Enter your password', labelText: 'Password', icon: Icons.lock, isExist: true),
              Container(
                  margin: const EdgeInsets.only(top: 20),
                  width: double.maxFinite,
                  height: 55,
                  child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(backgroundColor: ConstantColor.buttonsColor),
                      child: const Text("Login", style: TextStyle(color: Colors.white, fontSize: 25)))),
              Padding(
                  padding: const EdgeInsets.only(top: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text("Don't have an account?", style: TextStyle(fontSize: 15)),
                      ElevatedButton(
                          onPressed: () => Get.toNamed(NamedRoutes.profileScreen),
                          style: ElevatedButton.styleFrom(
                              backgroundColor: ConstantColor.backgroundColor, elevation: 0, padding: const EdgeInsets.only(left: 0)),
                          child: const Text("Register", style: TextStyle(fontSize: 16, color: ConstantColor.buttonsColor)))
                    ],
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
