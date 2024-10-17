import 'package:flutter/material.dart';

import '../../../resources/constants.dart';
import '../../../resources/images.dart';

class CustomTextFormField extends StatelessWidget {
  final String hintText;
  final String labelText;
  final IconData icon;
  final bool isExist;
  const CustomTextFormField({
    super.key,
    required this.hintText,
    required this.labelText,
    required this.icon,
    required this.isExist,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
        decoration: InputDecoration(
            focusedBorder: const OutlineInputBorder(borderSide: BorderSide(color: ConstantColor.buttonsColor, width: 2)),
            prefixIcon: Icon(icon),
            enabledBorder: const OutlineInputBorder(
                borderSide: BorderSide(color: Colors.grey, strokeAlign: BorderSide.strokeAlignOutside),
                borderRadius: BorderRadius.all(Radius.circular(30))),
            hintText: hintText,
            hintMaxLines: 1,
            hintStyle: const TextStyle(color: Colors.grey),
            label: Text(labelText),
            floatingLabelBehavior: FloatingLabelBehavior.always,
            suffixIcon: (isExist) ? const Icon(Icons.visibility_off_rounded) : null));
  }
}

class CustomText extends StatelessWidget {
  const CustomText({
    super.key,
    required this.title,
  });
  final String title;
  @override
  Widget build(BuildContext context) {
    return Text(title, style: const TextStyle(fontSize: 25, fontWeight: FontWeight.w500), textAlign: TextAlign.center);
  }
}

class CustomImage extends StatelessWidget {
  const CustomImage({
    super.key,
    required this.width,
    required this.height,
  });
  final double width;
  final double height;

  @override
  Widget build(BuildContext context) {
    return Image.asset(NamedImages.logo, width: width, height: width);
  }
}
