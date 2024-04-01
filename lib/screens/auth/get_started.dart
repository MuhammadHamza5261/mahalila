import 'package:flutter/material.dart';
import 'package:mahalila/component/customButton.dart';
import 'package:mahalila/component/customText.dart';
import 'package:mahalila/screens/auth/signIn.dart';
import 'package:mahalila/utils/styles.dart';

class GetStarted extends StatelessWidget {
  const GetStarted({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff060606),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(child: Image.asset("assets/png/watch.png")),
            TextWidget(text: 'Pick Your Favourite', color: AppColors.greyLightTextColor, fontSize: 16),
            const TextWidget(text: 'Mahalila', color: Colors.white, fontSize: 35, weight: FontWeight.bold),
            TextWidget(textAlign: TextAlign.center, fontSize: 16, text: 'Weekly deal, discount and much more \non our mobile application.', color: AppColors.greyLightTextColor),
            Padding(
              padding: const EdgeInsets.only(top: 20.0),
              child: CustomButton(
                  width: double.infinity,
                  height: 50,
                  buttonColor: Color(0xff131313),
                  radius: 10,
                  text: 'Get Started',
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => SignInScreen()));
                  },
                  textColor: Colors.white),
            )
          ],
        ),
      ),
    );
  }
}
