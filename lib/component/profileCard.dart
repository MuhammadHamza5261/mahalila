import 'package:flutter/material.dart';

import '../../utils/styles.dart';
import '../screens/profile/editProfile.dart';
import 'customButton.dart';
import 'customText.dart';

class ProfileCard extends StatelessWidget {
  const ProfileCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Align(
          alignment: Alignment.center,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 20),
            child: Container(
              padding: const EdgeInsets.all(15),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(5),
                boxShadow: [
                  BoxShadow(
                    color: const Color(0xff062664).withOpacity(0.1),
                    blurRadius: 20,
                    offset: const Offset(0, 4),
                  ),
                ],
              ),
              child: Stack(
                children: [
                  ListTile(
                    contentPadding: EdgeInsets.zero,
                    leading: CircleAvatar(
                      radius: 30,
                      backgroundColor: Colors.black,
                      child: Image.asset('assets/png/profile.png'),
                    ),
                    title: const TextWidget(text: 'Muzzamil Khan', weight: FontWeight.bold, fontSize: 18),
                    subtitle: TextWidget(
                        text: 'engrmuzzamilkh88@gmail.com', fontSize: 13, weight: FontWeight.w400, color: AppColors.greyLightTextColor),
                  ),

                  ///Info icon
                  Positioned(
                      right: 0,
                      child: GestureDetector(
                          onTap: () {
                            showDialog(
                              context: context,
                              builder: (context) => AlertDialog(
                                backgroundColor: Colors.white,
                                // title: const Align(alignment: Alignment.center, child: TextWidget(text: 'PERMISSION')),
                                content: SizedBox(
                                  height: 92,
                                  child: Column(
                                    children: [
                                      Align(
                                          alignment: Alignment.topRight,
                                          child: GestureDetector(
                                              onTap: () {
                                                Navigator.pop(context);
                                              },
                                              child: const TextWidget(text: 'X', weight: FontWeight.w700))),
                                      const Align(
                                          alignment: Alignment.center,
                                          child: TextWidget(
                                            text: 'PERMISSION',
                                            weight: FontWeight.w600,
                                            fontSize: 16,
                                          )),
                                      Padding(
                                        padding: const EdgeInsets.only(top: 6),
                                        child: TextWidget(
                                          text: 'Can we publish you nickname on result of the draw',
                                          textAlign: TextAlign.center,
                                          color: AppColors.greyLightTextColor,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                actions: [
                                  Align(
                                    alignment: Alignment.center,
                                    child: CustomButton(
                                        width: 80,
                                        height: 34,
                                        buttonColor: AppColors.primaryColor,
                                        radius: 4,
                                        text: 'Allow',
                                        onTap: () {
                                          Navigator.pop(context);
                                        }),
                                  ),
                                ],
                              ),
                            );
                          },
                          child: GestureDetector(
                              onTap: () {
                                Navigator.push(context, MaterialPageRoute(builder: (context) => EditProfileScreen()));
                              },
                              child: const Icon((Icons.edit_note))))),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
