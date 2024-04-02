import 'package:flutter/material.dart';
import 'package:mahalila/screens/auth/signUp.dart';
import 'package:page_transition/page_transition.dart';

import '../../bottom_navigator.dart';
import '../../component/backButtonWidget.dart';
import '../../component/customButton.dart';
import '../../component/customText.dart';
import '../../component/customTextField.dart';
import '../../utils/styles.dart';
import 'forgotPasswordScreen.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  final _name = TextEditingController();
  final _email = TextEditingController();
  final _password = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  bool obscureText = true;
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
                    const TextWidget(text: 'Sign In', color: Colors.black, fontSize: 28, weight: FontWeight.bold),
                    const Padding(
                      padding: EdgeInsets.only(top: 20, bottom: 10),
                      child: TextWidget(
                        text: 'User Name',
                        color: Colors.black,
                        weight: FontWeight.bold,
                        fontSize: 12,
                      ),
                    ),
                    CustomTextField(
                      controller: _name,
                      hints: 'Mobile number or email address',
                      selectedRadius: 10,
                      unSelectedRadius: 10,
                      suffixIcon: Icons.check,
                    ),
                    const Padding(
                      padding: EdgeInsets.only(top: 20, bottom: 10),
                      child: TextWidget(
                        text: 'User Name',
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
                      suffixIcon: obscureText ? Icons.visibility_outlined : Icons.visibility_off_outlined,
                      onTap: () {
                        setState(() {
                          obscureText = !obscureText;
                        });
                      },
                    ),
                    Align(
                        alignment: Alignment.topRight,
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => ForgotPasswordScreen()));
                          },
                          child: TextWidget(
                              text: 'Forgot your password?', color: Colors.black.withOpacity(0.5), fontSize: 15, weight: FontWeight.w400),
                        )),
                    Padding(
                      padding: const EdgeInsets.only(top: 35.0),
                      child: CustomButton(
                          loading: isLoading,
                          width: double.infinity,
                          height: 50,
                          buttonColor: AppColors.primaryColor,
                          radius: 8,
                          text: 'SIGN IN',
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
                    Padding(
                      padding: const EdgeInsets.only(top: 60, bottom: 20),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const TextWidget(text: 'Don’t have an account? ', fontSize: 15),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                PageTransition(
                                  type: PageTransitionType.rightToLeft,
                                  duration: const Duration(milliseconds: 500),
                                  child: const SignUpScreen(),
                                ),
                              );
                            },
                            child: const TextWidget(
                              text: 'Sign up.',
                              fontSize: 15,
                              weight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          const BackButtonWidget(),
        ],
      ),
    );
  }
}
