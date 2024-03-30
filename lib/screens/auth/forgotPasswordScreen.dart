import 'package:flutter/material.dart';
import 'package:mahalila/screens/auth/resetPasswordDone.dart';

import '../../component/backButtonWidget.dart';
import '../../component/customButton.dart';
import '../../component/customText.dart';
import '../../component/customTextField.dart';
import '../../utils/styles.dart';

class ForgotPasswordScreen extends StatefulWidget {
  const ForgotPasswordScreen({super.key});

  @override
  State<ForgotPasswordScreen> createState() => _ForgotPasswordScreenState();
}

class _ForgotPasswordScreenState extends State<ForgotPasswordScreen> {
  final _name = TextEditingController();
  bool obscureText = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 100, left: 20, right: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const TextWidget(text: 'Forgot Password', color: Colors.black, fontSize: 26, weight: FontWeight.bold),
                  TextWidget(
                      text: 'Please enter your email address. You will receive a link to create a new password via email.',
                      color: Colors.black.withOpacity(0.5)),
                  const Padding(
                    padding: EdgeInsets.only(top: 30, bottom: 0),
                    child: TextWidget(
                      text: 'Email',
                      color: Colors.black,
                      weight: FontWeight.bold,
                      fontSize: 12,
                    ),
                  ),
                  CustomTextField(
                    controller: _name,
                    hints: 'sohailahmad68122@mail.com',
                    selectedRadius: 10,
                    unSelectedRadius: 10,
                    suffixIcon: Icons.check,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 35.0),
                    child: CustomButton(
                        width: double.infinity,
                        height: 50,
                        buttonColor: AppColors.primaryColor,
                        radius: 8,
                        text: 'SEND',
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const ResetPasswordDoneScreen(),
                              ));
                        },
                        fontSize: 17,
                        textColor: Colors.white),
                  ),
                ],
              ),
            ),
            BackButtonWidget(),
          ],
        ),
      ),
    );
  }
}
