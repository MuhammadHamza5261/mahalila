import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mahalila/bloc/login_bloc.dart';
import 'package:mahalila/bloc/login_event.dart';
import 'package:mahalila/bloc/login_state.dart';
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
  // controllers

  // final _name = TextEditingController();
  final _email = TextEditingController();
  final _password = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  bool obscureText = true;
  bool isLoading = false;

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Stack(
        children: [
          BlocConsumer<LoginBloc,LoginState>(
            builder: (context,state){
              return SingleChildScrollView(
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
                            text: 'Email',
                            color: Colors.black,
                            weight: FontWeight.bold,
                            fontSize: 12,
                          ),
                        ),
                        CustomTextField(
                          controller: _email,
                          hints: 'Mobile number or email address',
                          selectedRadius: 10,
                          unSelectedRadius: 10,
                          suffixIcon: Icons.check,
                        ),
                        const Padding(
                          padding: EdgeInsets.only(top: 20, bottom: 10),
                          child: TextWidget(
                            text: 'Passoword',
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
                                Navigator.push(context, MaterialPageRoute(builder: (context) => const ForgotPasswordScreen()));
                              },
                              child: TextWidget(
                                  text: 'Forgot your password?',
                                  color: Colors.black.withOpacity(0.5),
                                  fontSize: 15, weight: FontWeight.w400),
                            )),
                        Padding(
                          padding: const EdgeInsets.only(top: 35.0),
                          ///
                          // child: CustomButton(
                          //     loading: isLoading,
                          //     width: double.infinity,
                          //     height: 50,
                          //     buttonColor: AppColors.primaryColor,
                          //     radius: 8,
                          //     text: 'SIGN IN',
                          //     onTap: () {
                          //       BlocProvider.of<LoginBloc>(context).add(
                          //        LoginDataEvent(
                          //            email: _email.text,
                          //            password: _password.text,
                          //        )
                          //
                          //       );
                          //
                          //       // Navigator.push(context,
                          //       //   PageTransition(
                          //       //     type: PageTransitionType.rightToLeft,
                          //       //     duration: const Duration(milliseconds: 500),
                          //       //     child: const NavigationScreen(),
                          //       //   ),
                          //       // );
                          //     },
                          //     fontSize: 17,
                          //     textColor: Colors.white),
                          ///
                          child: SizedBox(
                            width: width*0.9,
                            height: height*0.065,
                            child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  primary: Colors.pink.shade200,
                                  backgroundColor: Colors.black,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                ),
                                onPressed: (){
                                  BlocProvider.of<LoginBloc>(context).add(
                                    LoginDataEvent(
                                      email: _email.text,
                                      password: _password.text,
                                    ),
                                  );

                                  if (_formKey.currentState!.validate()) {}

                                },
                                child: state is LoginInProgressState?
                                const CircularProgressIndicator(color: Colors.white,):
                                const Text('Signup',style: TextStyle(fontSize: 18,color: Colors.white),)
                            ),
                          ),

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
              );

          },
              listener: (context,state){
                 if(state is LoginDataIsLoadedState)
                 {
                   Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => const NavigationScreen()));

                 }

                 else if(state is LoginFailure){
                   ScaffoldMessenger.of(context).showSnackBar(
                     SnackBar(
                       backgroundColor: Colors.redAccent,
                       content: Text(state.errorMessage,
                       ),
                     ),
                   );

                 }




          }
          ),
          const BackButtonWidget(),
        ],
      ),
    );
  }
}
