import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final TextEditingController controller;
  final IconData? suffixIcon;
  final String hints;
  final double unSelectedRadius;
  final double selectedRadius;
  final bool obscureText;
  final VoidCallback? onTap;
  final FormFieldValidator<String>? validator;

  const CustomTextField({
    super.key,
    required this.controller,
    this.suffixIcon,
    required this.hints,
    required this.unSelectedRadius,
    required this.selectedRadius,
    this.obscureText = false,
    this.onTap,
    this.validator,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 55,
      child: TextFormField(
          validator: validator,
          obscureText: obscureText,
          controller: controller,
          style: const TextStyle(fontWeight: FontWeight.w400, fontSize: 15),
          decoration: InputDecoration(
              //contentPadding: const EdgeInsets.only(left: 10),
              hintText: hints,
              hintStyle: const TextStyle(fontWeight: FontWeight.w400, fontSize: 15),
              suffixIcon: GestureDetector(onTap: onTap, child: Icon(suffixIcon, color: Colors.green)),
              border: const UnderlineInputBorder()
              // border: OutlineInputBorder(
              //     borderRadius: BorderRadius.circular(unSelectedRadius), borderSide: const BorderSide(color: Colors.grey)),
              // focusedBorder: OutlineInputBorder(
              //     borderRadius: BorderRadius.circular(selectedRadius), borderSide: BorderSide(color: AppColors.primaryColor)),
              )),
    );
  }
}
