import 'package:flutter/material.dart';

import '../utils/styles.dart';
import 'customText.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final VoidCallback onTap;
  const CustomAppBar({super.key, required this.title, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: true,
      backgroundColor: AppColors.appBarColor,
      title: TextWidget(
        text: title,
        fontSize: 18,
        weight: FontWeight.w500,
        color: AppColors.primaryColor,
      ),
      leading: IconButton(onPressed: onTap, icon: Icon(Icons.arrow_back_ios_sharp, color: AppColors.primaryColor, size: 18)),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
