import 'package:flutter/material.dart';

import '../../../resources/constants.dart';
import '../widgets/auth_shareable_widget.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ConstantColor.backgroundColor,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const CustomImage(width: 200, height: 200),
              const CustomText(title: "Register To New Account"),
              const Padding(
                  padding: EdgeInsets.symmetric(vertical: 25),
                  child: CustomTextFormField(hintText: "Enter your username", labelText: "UserName", icon: Icons.person, isExist: false)),
              const CustomTextFormField(hintText: "Enter your email", labelText: "Email", icon: Icons.email_sharp, isExist: false),
              const Padding(
                  padding: EdgeInsets.symmetric(vertical: 25),
                  child: CustomTextFormField(
                      hintText: "Enter your phone", labelText: "Phone", icon: Icons.phone_android_rounded, isExist: false)),
              const CustomTextFormField(hintText: "Enter your password", labelText: "Password", icon: Icons.person, isExist: true),
              Container(
                  margin: const EdgeInsets.only(top: 20),
                  width: double.maxFinite,
                  height: 55,
                  child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(backgroundColor: ConstantColor.buttonsColor),
                      child: const Text("Register", style: TextStyle(color: Colors.white, fontSize: 25)))),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("Already have an account?", style: TextStyle(fontSize: 15)),
                  ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                          backgroundColor: ConstantColor.backgroundColor, elevation: 0, padding: const EdgeInsets.only(left: 0)),
                      child: const Text("Login", style: TextStyle(fontSize: 16, color: ConstantColor.buttonsColor)))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
