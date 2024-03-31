import 'package:flutter/material.dart';

import '../../component/customAppBar.dart';
import '../../component/customButton.dart';
import '../../component/customText.dart';
import '../../utils/styles.dart';

class FeedBackScreen extends StatefulWidget {
  const FeedBackScreen({super.key});

  @override
  State<FeedBackScreen> createState() => _FeedBackScreenState();
}

class _FeedBackScreenState extends State<FeedBackScreen> {
  final _feedbackController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: CustomAppBar(
          title: 'Feedback',
          onTap: () {
            Navigator.pop(context);
          }),
      body: SingleChildScrollView(
        child: Padding(
            padding: const EdgeInsets.only(top: 25, left: 24, right: 26),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const TextWidget(text: 'How is your Experience?', color: Colors.black, fontSize: 17, weight: FontWeight.w600),
                  Padding(
                    padding: const EdgeInsets.only(top: 12.0, bottom: 12),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.star_purple500_sharp, size: 50, color: AppColors.yellowColor),
                        Icon(Icons.star_purple500_sharp, size: 50, color: AppColors.yellowColor),
                        Icon(Icons.star_purple500_sharp, size: 50, color: AppColors.yellowColor),
                        Icon(Icons.star_purple500_sharp, size: 50, color: AppColors.yellowColor),
                        Icon(Icons.star_purple500_sharp, size: 50, color: AppColors.greyBgColor),
                      ],
                    ),
                  ),
                  TextFormField(
                      maxLines: 5,
                      controller: _feedbackController,
                      style: const TextStyle(fontWeight: FontWeight.w400, fontSize: 15),
                      decoration: InputDecoration(
                          //contentPadding: const EdgeInsets.only(left: 10),
                          hintText: 'Write your feedback',
                          hintStyle: const TextStyle(fontWeight: FontWeight.w400, fontSize: 15),
                          border:
                              OutlineInputBorder(borderRadius: BorderRadius.circular(10), borderSide: const BorderSide(color: Colors.grey)),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10), borderSide: BorderSide(color: AppColors.primaryColor)))),
                  Padding(
                    padding: const EdgeInsets.only(top: 30.0),
                    child: CustomButton(
                        width: double.infinity,
                        height: 50,
                        buttonColor: AppColors.primaryColor,
                        radius: 8,
                        text: 'Submit',
                        onTap: () {
                          // Navigator.push(
                          //     context,
                          //     MaterialPageRoute(
                          //       builder: (context) => const NavigationScreen(),
                          //     ));
                        },
                        fontSize: 17,
                        weight: FontWeight.w500,
                        textColor: Colors.white),
                  ),
                ],
              ),
            )),
      ),
    );
  }
}
