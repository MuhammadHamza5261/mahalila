import 'package:flutter/material.dart';

import '../utils/constants.dart';
import '../utils/styles.dart';

class SettingsListTileWidget extends StatelessWidget {
  final IconData leadingIcon;
  final String title;
  final Color avatarBGColor;
  final VoidCallback? onTap;
  const SettingsListTileWidget({
    super.key,
    required this.title,
    required this.avatarBGColor,
    this.onTap,
    required this.leadingIcon,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: kPadding, right: 25),
      child: ListTile(
        contentPadding: EdgeInsets.zero,
        onTap: onTap,
        leading: Icon(leadingIcon),
        title: Text(
          title,
          style: const TextStyle(fontSize: 15, color: Colors.black, fontWeight: FontWeight.w400),
        ),
        trailing: Icon(
          Icons.arrow_forward_ios,
          color: AppColors.greyLightTextColor,
          size: 16,
        ),
      ),
    );
  }
}
