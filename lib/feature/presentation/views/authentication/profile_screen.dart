import '../widgets/auth_shareable_widget.dart';
import '../../../resources/constants.dart';
import '../../../resources/images.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ConstantColor.backgroundColor,
      appBar: AppBar(
          elevation: 2,
          shadowColor: Colors.black.withOpacity(0.6),
          backgroundColor: ConstantColor.backgroundColor,
          leading: IconButton(onPressed: () {}, icon: const Icon(Icons.arrow_back, color: ConstantColor.secondaryColor)),
          title: const Text("Profile", style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500))),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // circular avatar and image
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Stack(children: [
                CircleAvatar(radius: 65, backgroundColor: Colors.white, child: Image.asset(NamedImages.profileImage, height: 100)),
                const Positioned(
                    bottom: 0,
                    right: 3,
                    child: CircleAvatar(
                        radius: 15, backgroundColor: ConstantColor.secondaryColor, child: Icon(Icons.edit_rounded, color: Colors.white)))
              ]),
            ),
            const Divider(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 35),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // text form field of phone
                  const CustomTextFormField(hintText: "Enter your name", labelText: "Username", icon: Icons.person, isExist: false),

                  const SizedBox(height:20),
                  // text form field of phone
                  const CustomTextFormField(
                      hintText: "Enter your phone", labelText: "Phone", icon: Icons.phone_android_rounded, isExist: false),

                  // Save button
                  Container(
                      margin: const EdgeInsets.only(top: 20),
                      width: double.maxFinite,
                      height: 55,
                      decoration: BoxDecoration(boxShadow: [
                        BoxShadow(blurRadius: 13, offset: const Offset(0, 3), color: Colors.black.withOpacity(0.25), spreadRadius: 2)
                      ]),
                      child: ElevatedButton.icon(
                          icon: const Icon(Icons.save, color: Colors.white),
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(backgroundColor: ConstantColor.buttonsColor),
                          label: const Text("Save Profile", style: TextStyle(color: Colors.white, fontSize: 20)))),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
