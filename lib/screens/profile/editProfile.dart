import 'package:flutter/material.dart';
import 'package:mahalila/component/customText.dart';

import '../../component/customAppBar.dart';
import '../../component/customButton.dart';
import '../../component/customTextField.dart';
import '../../utils/styles.dart';

class EditProfileScreen extends StatefulWidget {
  const EditProfileScreen({super.key});

  @override
  State<EditProfileScreen> createState() => _EditProfileScreenState();
}

class _EditProfileScreenState extends State<EditProfileScreen> {
  final _formKey = GlobalKey<FormState>();
  final _name = TextEditingController();
  final _phone = TextEditingController();
  final _password = TextEditingController();
  final _oldPassword = TextEditingController();
  final _confirmPassword = TextEditingController();
  bool obscureText = true;
  bool obscureText2 = true;
  bool isLoading = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: CustomAppBar(
          title: 'Edit Password',
          onTap: () {
            Navigator.pop(context);
          }),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 20, bottom: 20),
                child: Align(
                  alignment: Alignment.center,
                  child: Stack(
                    children: [
                      Container(
                        width: 80,
                        height: 80,
                        decoration: const BoxDecoration(
                          //  border: Border.all(color: Color(0xff504F4D), width: 2),
                          shape: BoxShape.circle,
                          color: Colors.black12,
                          image: DecorationImage(image: AssetImage('assets/png/profile.png')),
                        ),
                      ),
                      Positioned(
                        right: 2,
                        bottom: 3,
                        child: Container(
                            width: 22,
                            height: 22,
                            decoration: const BoxDecoration(shape: BoxShape.circle, color: Colors.black),
                            child: const Center(child: Icon(Icons.add, color: Colors.white, size: 18))),
                      )
                    ],
                  ),
                ),
              ),
              Form(
                key: _formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
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
                        text: 'PHONE NUMBER',
                        color: Colors.black,
                        weight: FontWeight.bold,
                        fontSize: 12,
                      ),
                    ),
                    CustomTextField(
                      suffixIcon: Icons.check,
                      controller: _phone,
                      hints: '0336 3363638',
                      selectedRadius: 10,
                      unSelectedRadius: 10,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Enter phone';
                        }
                        return null;
                      },
                    ),
                    const Padding(
                      padding: EdgeInsets.only(top: 30, bottom: 0),
                      child: TextWidget(
                        text: 'OLD PASSWORD',
                        color: Colors.black,
                        weight: FontWeight.bold,
                        fontSize: 12,
                      ),
                    ),
                    CustomTextField(
                      obscureText: obscureText,
                      selectedRadius: 10,
                      unSelectedRadius: 10,
                      controller: _oldPassword,
                      hints: 'Old Password',
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
                      hints: 'Password',
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
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 50),
                child: CustomButton(
                    width: double.infinity,
                    height: 50,
                    buttonColor: AppColors.primaryColor,
                    radius: 8,
                    text: 'SAVE',
                    onTap: () {
                      // Navigator.push(
                      //     context,
                      //     MaterialPageRoute(
                      //       builder: (context) => const BottomNavigatorsBar(),
                      //     ));
                    },
                    fontSize: 15,
                    weight: FontWeight.w500,
                    textColor: Colors.white),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
