import 'package:flutter/material.dart';
import 'package:mahalila/screens/auth/verify_phone_screen.dart';
import 'package:page_transition/page_transition.dart';

import '../../component/backButtonWidget.dart';
import '../../component/customButton.dart';
import '../../component/customText.dart';
import '../../component/customTextField.dart';
import '../../utils/styles.dart';

class ResetPasswordScreen extends StatefulWidget {
  const ResetPasswordScreen({super.key});

  @override
  State<ResetPasswordScreen> createState() => _ResetPasswordScreenState();
}

class _ResetPasswordScreenState extends State<ResetPasswordScreen> {
  final _name = TextEditingController();
  final _email = TextEditingController();
  final _password = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  bool obscureText = true;
  bool obscureText1 = true;
  bool isLoading = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.only(top: 100, left: 20, right: 20),
              child: Form(
                key: _formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const TextWidget(text: 'Reset Password', color: Colors.black, fontSize: 28, weight: FontWeight.bold),
                    const Padding(
                      padding: EdgeInsets.only(top: 20, bottom: 10),
                      child: TextWidget(
                        text: 'Password',
                        color: Colors.black,
                        weight: FontWeight.bold,
                        fontSize: 12,
                      ),
                    ),
                    CustomTextField(
                      obscureText: obscureText,
                      selectedRadius: 10,
                      unSelectedRadius: 10,
                      controller: _name,
                      hints: '*********',
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Enter password';
                        }
                        return null;
                      },
                      suffixIcon: obscureText ? Icons.visibility_outlined : Icons.visibility_off_outlined,
                      onTap: () {
                        setState(() {
                          obscureText = !obscureText;
                        });
                      },
                    ),
                    const Padding(
                      padding: EdgeInsets.only(top: 20, bottom: 10),
                      child: TextWidget(
                        text: 'Confirm password',
                        color: Colors.black,
                        weight: FontWeight.bold,
                        fontSize: 12,
                      ),
                    ),
                    CustomTextField(
                      obscureText: obscureText,
                      selectedRadius: 10,
                      unSelectedRadius: 10,
                      controller: _password,
                      hints: '*********',
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Enter password';
                        }
                        return null;
                      },
                      suffixIcon: obscureText1 ? Icons.visibility_outlined : Icons.visibility_off_outlined,
                      onTap: () {
                        setState(() {
                          obscureText1 = !obscureText1;
                        });
                      },
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 35.0),
                      child: CustomButton(
                          loading: isLoading,
                          width: double.infinity,
                          height: 50,
                          buttonColor: AppColors.primaryColor,
                          radius: 8,
                          text: 'RESET',
                          onTap: () {
                            Navigator.push(
                              context,
                              PageTransition(
                                type: PageTransitionType.rightToLeft,
                                duration: const Duration(milliseconds: 500),
                                child: const VerifyPhoneScreen(),
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
          ),
          BackButtonWidget(),
        ],
      ),
    );
  }
}
