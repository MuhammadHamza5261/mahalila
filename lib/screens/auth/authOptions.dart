import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mahalila/screens/auth/signIn.dart';
import 'package:page_transition/page_transition.dart';

import '../../component/customText.dart';
import '../../utils/constants.dart';
import '../../utils/styles.dart';

class AuthOptionsScreen extends StatefulWidget {
  const AuthOptionsScreen({super.key});

  @override
  State<AuthOptionsScreen> createState() => _AuthOptionsScreenState();
}

class _AuthOptionsScreenState extends State<AuthOptionsScreen> {
  final _name = TextEditingController();
  final _email = TextEditingController();
  final _password = TextEditingController();
  bool obscureText = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 60, left: 28, right: 28),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/pngImages/logo.png', width: 320),
            Padding(
              padding: EdgeInsets.only(top: 7, bottom: 30),
              child: TextWidget(
                text: 'Rifas De Armas',
                fontFamily: 'poorRichard',
                fontSize: 44,
              ),
            ),
            SocialButtonWidget(
              svgIconPath: Constants.googleImg,
              text: 'Continue With Google',
              onTap: () {},
            ),
            const SizedBox(height: 10),
            SocialButtonWidget(
              svgIconPath: Constants.fbImg,
              text: 'Continue With Facebook',
              onTap: () {},
            ),
            const SizedBox(height: 10),
            SocialButtonWidget(
              svgIconPath: Constants.emailImg,
              text: 'Continue With Email',
              onTap: () {},
            ),
            Padding(
              padding: const EdgeInsets.only(top: 15, bottom: 20),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextWidget(
                    text: 'Already have an account? ',
                    fontSize: 15,
                    color: AppColors.greyLightTextColor2,
                    weight: FontWeight.w400,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          PageTransition(
                            type: PageTransitionType.rightToLeft,
                            duration: const Duration(milliseconds: 500),
                            child: SignInScreen(),
                          ));
                    },
                    child: TextWidget(
                      text: 'Sign in.',
                      fontSize: 15,
                      weight: FontWeight.bold,
                      color: AppColors.darkTextColor,
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class SocialButtonWidget extends StatelessWidget {
  final String svgIconPath;
  final String text;
  final Function onTap;
  const SocialButtonWidget({
    super.key,
    required this.svgIconPath,
    required this.text,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => onTap(),
      child: Container(
        height: 50,
        decoration: BoxDecoration(
          color: AppColors.btnBGTextColor,
          borderRadius: BorderRadius.circular(8),
          border: Border.all(color: AppColors.btnBorderColor),
        ),
        child: Padding(
          padding: const EdgeInsets.only(left: 50.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(width: 30, child: SvgPicture.asset(svgIconPath)),
              const SizedBox(width: 14),
              TextWidget(
                text: text,
                color: AppColors.darkTextColor,
                // fontSize: 14,
                weight: FontWeight.w500,
              )
            ],
          ),
        ),
      ),
    );
  }
}
