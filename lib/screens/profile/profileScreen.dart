import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mahalila/screens/profile/promoCode_screen.dart';
import 'package:page_transition/page_transition.dart';

import '../../component/Settings_ListTile_widget.dart';
import '../../component/divider.dart';
import '../../component/profileCard.dart';
import '../../utils/styles.dart';
import 'order_history.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          SizedBox(
            width: width,
            height: height * 0.3,
            child: Stack(
              children: [
                Image.asset('assets/png/coverImage.png', fit: BoxFit.fitWidth, width: width),
                Padding(
                  padding: EdgeInsets.only(top: height * 0.15),
                  child: const ProfileCard(),
                ),
              ],
            ),
          ),
          const SizedBox(height: 10),
          SettingsListTileWidget(
            leadingIcon: Icons.calendar_today_outlined,
            title: 'Order History',
            avatarBGColor: AvatarColors.amberColor,
            onTap: () {
              Navigator.push(
                context,
                PageTransition(
                  type: PageTransitionType.rightToLeft,
                  duration: const Duration(milliseconds: 500),
                  child: const OrderHistoryScreen(),
                ),
              );
            },
          ),
          dividerWidget(),
          SettingsListTileWidget(
            leadingIcon: Icons.location_on_outlined,
            title: 'My Address',
            avatarBGColor: AvatarColors.blueColor,
            onTap: () {
              // Navigator.push(
              //   context,
              //   PageTransition(
              //     type: PageTransitionType.rightToLeft,
              //     duration: const Duration(milliseconds: 500),
              //     child: const PromoCodeScreen(),
              //   ),
              // );
            },
          ),
          dividerWidget(),
          SettingsListTileWidget(
            leadingIcon: CupertinoIcons.gift,
            title: 'My Promo-codes',
            avatarBGColor: AvatarColors.orangeDarkColor,
            onTap: () {
              Navigator.push(
                context,
                PageTransition(
                  type: PageTransitionType.rightToLeft,
                  duration: const Duration(milliseconds: 500),
                  child: const PromoCodeScreen(),
                ),
              );
            },
          ),
          dividerWidget(),
          SettingsListTileWidget(
            leadingIcon: Icons.favorite_border,
            title: 'My Favorites',
            avatarBGColor: AvatarColors.pinkDarkColor,
            onTap: () {
              // Navigator.push(context, MaterialPageRoute(builder: (context) => const HelpAndSupportScreen()));
            },
          ),
          dividerWidget(),
          SettingsListTileWidget(
            leadingIcon: Icons.login,
            title: 'Sign Out',
            avatarBGColor: AvatarColors.redColor,
            onTap: () {
              //  Navigator.push(context, MaterialPageRoute(builder: (context) => const NotificationScreen()));
            },
          ),
          dividerWidget(),
        ],
      ),
    );
  }
}
