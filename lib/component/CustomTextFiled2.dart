import 'package:flutter/material.dart';

///Underline TextField
class CustomTextField extends StatelessWidget {
  final TextEditingController controller;
  final String text;
  const CustomTextField({super.key, required this.controller, required this.text});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return TextFormField(
      controller: controller,
      style: TextStyle(fontSize: width * 0.038),
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.only(left: 15),
        hintText: text,
        hintStyle: TextStyle(fontSize: width * 0.038),
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.grey.withOpacity(0.5)),
        ),
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.grey.withOpacity(0.5)),
        ),
      ),
    );
  }
}
