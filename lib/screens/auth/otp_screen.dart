import 'package:flutter/material.dart';

import '../../component/backButtonWidget.dart';
import '../../component/customButton.dart';
import '../../component/customText.dart';
import '../../utils/styles.dart';
import 'order_success_screen.dart';

class OTPScreen extends StatefulWidget {
  const OTPScreen({super.key});

  @override
  State<OTPScreen> createState() => _OTPScreenState();
}

class _OTPScreenState extends State<OTPScreen> {
  bool allFieldsValid = false;
  String firstDigit = '';
  final List<FocusNode> _focusNodes = List.generate(5, (_) => FocusNode());
  List<String> listOfDigits = List.generate(5, (_) => '');
  TextEditingController pinFieldController = TextEditingController();
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
                  TextWidget(text: 'Enter your OTP code here.', color: Colors.black.withOpacity(0.5)),
                  Padding(
                    padding: const EdgeInsets.only(top: 28.0),
                    child: otpBlock(),
                  ),
                  Row(
                    children: [
                      TextWidget(text: 'Didn’t receive the OTP? ', color: Colors.black.withOpacity(0.5)),
                      GestureDetector(
                        onTap: () {} == null ? () {} : null,
                        child: const TextWidget(text: 'Resend', color: Colors.black, weight: FontWeight.w600),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 35.0),
                    child: CustomButton(
                        width: double.infinity,
                        height: 50,
                        buttonColor: AppColors.primaryColor,
                        radius: 8,
                        text: 'VERIFY',
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const OrderSuccessScreen(),
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

  Widget otpBlock() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        for (int i = 0; i < 5; i++) digitBlock(5.0, _focusNodes[i], i),
      ],
    );
  }

  Widget digitBlock(screenWidth, node, i) {
    return Padding(
      padding: EdgeInsets.all(screenWidth),
      child: SizedBox(
        height: screenWidth * 12,
        width: screenWidth * 12,
        child: TextField(
          maxLength: 1,
          textAlign: TextAlign.center,
          keyboardType: TextInputType.number,
          focusNode: node,
          onChanged: (value) {
            setState(() {
              listOfDigits[i] = value;
              pinFieldController.text = listOfDigits.join();
            });

            if (value.length == 1) {
              if (i != 5) {
                _focusNodes[i + 1].requestFocus();
              } else {
                _focusNodes[i].unfocus();
              }
            }
          },
          style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          decoration: InputDecoration(
            counterText: '',
            contentPadding: const EdgeInsets.all(0),
            border: InputBorder.none,
            hintText: '',
            //hintStyle: textStyle(screenWidth * 6.1, theme.whiteColor.withOpacity(.8)),
            filled: true,
            fillColor: listOfDigits[i] == '' ? const Color(0xffDBDBDB) : Colors.black,
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(screenWidth), borderSide: const BorderSide(width: 0, color: Colors.transparent)),
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(screenWidth), borderSide: const BorderSide(width: 0, color: Colors.transparent)),
          ),
        ),
      ),
    );
  }
}
