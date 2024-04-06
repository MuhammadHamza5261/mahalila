import 'package:flutter/material.dart';
import 'package:mahalila/component/bottom_sheet2.dart';
import 'package:mahalila/component/customAppBar2.dart';
import 'package:mahalila/component/customText.dart';
import 'package:mahalila/utils/styles.dart';

class GoToCheckOutScreen extends StatefulWidget {
  const GoToCheckOutScreen({super.key});

  @override
  State<GoToCheckOutScreen> createState() => _GoToCheckOutScreenState();
}

class _GoToCheckOutScreenState extends State<GoToCheckOutScreen> {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,

      ///App bar
      appBar: CustomAppBar2(
        title: 'Order',
        onTap: () {
          Navigator.pop(context);
        },
      ),
      body: Stack(
        children: [
          Column(
            children: [
              ///1st Widget
              for (int i = 0; i <= 1; i++)
                Stack(
                  children: [
                    Container(
                      width: width,
                      height: height * 0.14,
                      color: Colors.white,
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Image.asset('assets/png/product2.png'),
                          ),
                          const Padding(
                            padding: EdgeInsets.only(top: 25.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                TextWidget(text: 'AirPods Pro (1x)', weight: FontWeight.w500),
                                Padding(
                                  padding: EdgeInsets.only(top: 14.0, bottom: 14),
                                  child: TextWidget(
                                    text: 'Comparisons + headphones + \nBlack + Extra Charger',
                                    fontSize: 12,
                                    color: Colors.grey,
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    const Positioned(
                        right: 50,
                        top: 25,
                        child: TextWidget(
                          text: '\$290',
                          fontSize: 16,
                          weight: FontWeight.w500,
                        )),
                  ],
                ),

              ///2nd Widget
              for (int i = 0; i <= 1; i++)
                Stack(
                  children: [
                    Container(
                      width: width,
                      height: height * 0.14,
                      color: Colors.white,
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Image.asset('assets/png/airpods3.png', width: width * 0.2),
                          ),
                          const Padding(
                            padding: EdgeInsets.only(top: 25.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                TextWidget(text: 'AirPods Pro (1x)', weight: FontWeight.w500),
                                Padding(
                                  padding: EdgeInsets.only(top: 14.0, bottom: 14),
                                  child: TextWidget(
                                    text: 'Comparisons + headphones + \nBlack + Extra Charger',
                                    fontSize: 12,
                                    color: Colors.grey,
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    const Positioned(
                        right: 105,
                        top: 25,
                        child: TextWidget(
                          text: '\$290',
                          fontSize: 15,
                          weight: FontWeight.w500,
                        )),
                    Positioned(
                      bottom: 12,
                      top: 12,
                      right: 55,
                      child: Container(
                        width: width * 0.1,
                        height: height,
                        decoration: BoxDecoration(
                          color: const Color(0xffFE6B6B),
                          borderRadius: BorderRadius.circular(16),
                        ),
                        child: const Icon(Icons.delete_outline, color: Colors.white),
                      ),
                    ),
                    Positioned(
                      bottom: 12,
                      top: 12,
                      right: 10,
                      child: Container(
                        width: width * 0.1,
                        height: height,
                        decoration: BoxDecoration(
                          color: AppColors.primaryColor,
                          borderRadius: BorderRadius.circular(16),
                        ),
                        child: const Icon(Icons.add, color: Colors.white),
                      ),
                    )
                  ],
                ),
            ],
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: CustomModalBottomSheet2(),
          )
        ],
      ),
    );
  }
}
