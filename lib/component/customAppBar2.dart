import 'package:flutter/material.dart';

import '../utils/styles.dart';
import 'customText.dart';

class CustomAppBar2 extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final VoidCallback onTap;
  final String image;
  const CustomAppBar2({super.key, required this.title, required this.onTap, required this.image});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: true,
      backgroundColor: Colors.white,
      title: TextWidget(
        text: title,
        fontSize: 20,
        weight: FontWeight.w600,
        color: AppColors.primaryColor,
      ),
      leading: Padding(
        padding: const EdgeInsets.all(12),
        child: InkWell(
          onTap: () {
            //  Navigator.pop(context);
          },
          child: Container(
            width: 30,
            height: 30,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: AppColors.primaryColor,
            ),
            child: Padding(
              padding: const EdgeInsets.all(5.0),
              child: Image.asset("assets/png/arrow_back.png"),
            ),
          ),
        ),
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.only(right: 20),
          child: Container(
            width: 30,
            height: 30,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: AppColors.primaryColor,
            ),
            child: Padding(
              padding: const EdgeInsets.all(5.0),
              child: Image.asset(image),
            ),
          ),
        )
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
