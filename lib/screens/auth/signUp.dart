import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mahalila/screens/auth/signIn.dart';
import 'package:page_transition/page_transition.dart';

import '../../bottom_navigator.dart';
import '../../component/backButtonWidget.dart';
import '../../component/customButton.dart';
import '../../component/customText.dart';
import '../../component/customTextField.dart';
import '../../utils/styles.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final _formKey = GlobalKey<FormState>();
  final _name = TextEditingController();
  final _email = TextEditingController();
  final _password = TextEditingController();
  final _confirmPassword = TextEditingController();
  bool obscureText = true;
  bool obscureText2 = true;
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
                    const TextWidget(text: 'Sign Up', color: Colors.black, fontSize: 28, weight: FontWeight.bold),
                    const Padding(
                      padding: EdgeInsets.only(top: 30, bottom: 0),
                      child: TextWidget(
                        text: 'Name',
                        color: Colors.black,
                        weight: FontWeight.bold,
                        fontSize: 12,
                      ),
                    ),
                    CustomTextField(
                      suffixIcon: Icons.check,
                      controller: _name,
                      hints: 'Sohail Ahmad',
                      selectedRadius: 10,
                      unSelectedRadius: 10,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Name';
                        }
                        return null;
                      },
                    ),
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
                      suffixIcon: Icons.check,
                      controller: _email,
                      hints: 'sohailahmad68122@mail.com',
                      selectedRadius: 10,
                      unSelectedRadius: 10,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Enter email';
                        }
                        return null;
                      },
                    ),
                    const Padding(
                      padding: EdgeInsets.only(top: 30, bottom: 0),
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
                      controller: _password,
                      hints: 'Password ',
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
                      padding: EdgeInsets.only(top: 30, bottom: 0),
                      child: TextWidget(
                        text: 'Confirm Password',
                        color: Colors.black,
                        weight: FontWeight.bold,
                        fontSize: 12,
                      ),
                    ),
                    CustomTextField(
                      obscureText: obscureText2,
                      selectedRadius: 10,
                      unSelectedRadius: 10,
                      controller: _confirmPassword,
                      hints: 'Confirm Password',
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Enter password';
                        }
                        return null;
                      },
                      suffixIcon: obscureText2 ? Icons.visibility_outlined : Icons.visibility_off_outlined,
                      onTap: () {
                        setState(() {
                          obscureText2 = !obscureText2;
                        });
                      },
                    ),

                    ///Button
                    Padding(
                      padding: const EdgeInsets.only(top: 35.0),
                      child: CustomButton(
                          loading: isLoading,
                          width: double.infinity,
                          height: 50,
                          buttonColor: AppColors.primaryColor,
                          radius: 8,
                          text: 'SIGN UP',
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
                      padding: const EdgeInsets.only(top: 40.0, bottom: 20),
                      child: Row(
                        children: [
                          const Expanded(flex: 1, child: Divider()),
                          Expanded(
                              flex: 2,
                              child: Center(
                                child: TextWidget(
                                  text: 'or continue with',
                                  color: AppColors.greyLightTextColor,
                                ),
                              )),
                          const Expanded(flex: 1, child: Divider()),
                        ],
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SvgPicture.asset('assets/google.svg'),
                        Padding(
                          padding: const EdgeInsets.only(left: 8.0),
                          child: SvgPicture.asset('assets/facebook.svg'),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 30, bottom: 20),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const TextWidget(text: 'Don’t have an account? ', fontSize: 15),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => const SignInScreen(),
                                  ));
                            },
                            child: const TextWidget(
                              text: 'Sign In.',
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
