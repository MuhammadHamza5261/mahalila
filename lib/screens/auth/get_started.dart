import 'package:flutter/material.dart';
import 'package:mahalila/component/customButton.dart';
import 'package:mahalila/component/customText.dart';
import 'package:mahalila/screens/auth/signIn.dart';
import 'package:mahalila/utils/styles.dart';


class GetStarted extends StatefulWidget {
  const GetStarted({super.key});

  @override
  State<GetStarted> createState() => _GetStartedState();
}

class _GetStartedState extends State<GetStarted> {
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: const Color(0xff060606),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset("assets/png/watch.png", width: 300, height: 300),
            TextWidget(text: 'Pick Your Favourite', color: AppColors.greyLightTextColor, fontSize: 16),
            const TextWidget(text: 'MAHALILA', color: Colors.white, fontSize: 35, weight: FontWeight.bold),
            TextWidget(
                textAlign: TextAlign.center,
                fontSize: 16,
                text: 'Weekly deal, discount and much more \non our mobile application.',
                color: AppColors.greyLightTextColor),
            Padding(
              padding: const EdgeInsets.only(top: 40.0),
              child: CustomButton(
                  width: double.infinity,
                  height: height*0.06,
                  buttonColor: const Color(0xff131313),
                  radius: 10,
                  text: 'GET STARTED',
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
