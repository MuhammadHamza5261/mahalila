import 'package:flutter/material.dart';
import 'package:mahalila/screens/auth/otp_screen.dart';

import '../../component/backButtonWidget.dart';
import '../../component/customButton.dart';
import '../../component/customText.dart';
import '../../component/customTextField.dart';
import '../../utils/styles.dart';

class VerifyPhoneScreen extends StatefulWidget {
  const VerifyPhoneScreen({super.key});

  @override
  State<VerifyPhoneScreen> createState() => _VerifyPhoneScreenState();
}

class _VerifyPhoneScreenState extends State<VerifyPhoneScreen> {
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
                  const TextWidget(text: 'Verify Your Phone Number', color: Colors.black, fontSize: 26, weight: FontWeight.bold),
                  TextWidget(text: 'We have sent you an SMS with a code to number +17 0123456789.', color: Colors.black.withOpacity(0.5)),
                  const Padding(
                    padding: EdgeInsets.only(top: 30, bottom: 0),
                    child: TextWidget(
                      text: 'phone number',
                      color: Colors.black,
                      weight: FontWeight.bold,
                      fontSize: 12,
                    ),
                  ),
                  CustomTextField(
                    controller: _name,
                    hints: '+17 0123456789',
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
                                builder: (context) => const OTPScreen(),
                              ));
                        },
                        fontSize: 17,
                        textColor: Colors.white),
                  ),
                ],
              ),
            ),
            const BackButtonWidget(),
          ],
        ),
      ),
    );
  }
}
