import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

import '../../bottom_navigator.dart';
import '../../component/backButtonWidget.dart';
import '../../component/customButton.dart';
import '../../component/customText.dart';
import '../../utils/styles.dart';

class OrderFailedScreen extends StatefulWidget {
  const OrderFailedScreen({super.key});

  @override
  State<OrderFailedScreen> createState() => _OrderFailedScreenState();
}

class _OrderFailedScreenState extends State<OrderFailedScreen> {
  final _name = TextEditingController();
  bool obscureText = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Align(alignment: Alignment.center, child: Image.asset('assets/png/failed.png', width: 250)),
                  const Padding(
                    padding: EdgeInsets.only(top: 20, bottom: 10),
                    child: TextWidget(
                        textAlign: TextAlign.center,
                        text: 'Your Password Has \nBeen Reset!',
                        color: Colors.black,
                        fontSize: 26,
                        weight: FontWeight.bold),
                  ),
                  TextWidget(
                      textAlign: TextAlign.center,
                      text: 'Qui ex aute ipsum duis. Incididunt adipisicing \nvoluptate laborum.',
                      color: Colors.black.withOpacity(0.5)),
                  Padding(
                    padding: const EdgeInsets.only(top: 40),
                    child: CustomButton(
                        width: double.infinity,
                        height: 50,
                        buttonColor: AppColors.primaryColor,
                        radius: 8,
                        text: 'DONE',
                        onTap: () {
                          Navigator.push(
                            context,
                            PageTransition(
                              type: PageTransitionType.rightToLeft,
                              duration: const Duration(milliseconds: 500),
                              child: const NavigationScreen(),
                            ),
                          );
                        },
                        fontSize: 17,
                        textColor: Colors.white),
                  ),
                ],
              ),
            ),
          ),
          BackButtonWidget(),
        ],
      ),
    );
  }
}
