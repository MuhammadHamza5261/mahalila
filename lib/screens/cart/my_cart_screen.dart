import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:mahalila/component/customAppBar2.dart';
import 'package:mahalila/component/customText.dart';
import 'package:mahalila/utils/styles.dart';

import '../../component/bottomSheet.dart';

class MyCartScreen extends StatefulWidget {
  const MyCartScreen({super.key});

  @override
  State<MyCartScreen> createState() => _MyCartScreenState();
}

class _MyCartScreenState extends State<MyCartScreen> {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: CustomAppBar2(
          title: 'My Cart',
          onTap: () {
            Navigator.pop(context);
          },
          image: 'assets/png/more.png'),
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.only(bottom: 180.0),
              child: Column(
                children: [
                  ///1st row contains location text and edit button
                  ListTile(
                    leading: Container(
                      width: width * 0.11,
                      height: height * 0.05,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(13),
                        color: AppColors.primaryColor,
                      ),
                      child: const Icon(Icons.location_on, color: Colors.white),
                    ),
                    title: TextWidget(
                      text: 'Boucherville , Canada',
                      fontSize: width * 0.04,
                      color: AppColors.primaryColor,
                    ),
                    trailing: Image.asset('assets/png/edit.png', color: AppColors.primaryColor, width: width * 0.07),
                  ),

                  ///Text
                  ListTile(
                    leading: TextWidget(
                      text: 'Your Items',
                      fontSize: width * 0.043,
                      color: AppColors.primaryColor,
                    ),
                    trailing: TextWidget(
                      text: 'See menu',
                      fontSize: width * 0.035,
                      weight: FontWeight.w400,
                      color: Colors.grey,
                    ),
                  ),

                  ///Card
                  for (int i = 1; i <= 2; i++)
                    Stack(
                      children: [
                        Container(
                          width: width,
                          height: height * 0.15,
                          color: Colors.white,
                          child: Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Image.asset('assets/png/product1.png'),
                              ),
                              const Padding(
                                padding: EdgeInsets.only(top: 25.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    TextWidget(
                                      text: 'AirPods Pro Actually \nNoise',
                                      weight: FontWeight.w500,
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(top: 14.0, bottom: 14),
                                      child: TextWidget(
                                        text: 'Black',
                                        fontSize: 14,
                                        color: Colors.grey,
                                        weight: FontWeight.w400,
                                      ),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                        const Positioned(right: 15, top: 25, child: TextWidget(text: '\$15.49')),
                        Positioned(
                            bottom: 14,
                            right: 10,
                            child: Row(
                              children: [
                                Container(
                                    width: width * 0.06,
                                    height: height * 0.05,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      border: Border.all(color: AppColors.greyLightTextColor),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(2.0),
                                      child: Image.asset('assets/png/minus.png'),
                                    )),
                                ////Text
                                Padding(
                                  padding: EdgeInsets.symmetric(horizontal: width * 0.02),
                                  child: const TextWidget(text: '1'),
                                ),
                                Container(
                                    width: width * 0.06,
                                    height: height * 0.05,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      border: Border.all(color: AppColors.greyLightTextColor),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(2.0),
                                      child: Image.asset('assets/png/plus.png'),
                                    )),
                              ],
                            ))
                      ],
                    ),

                  ///order Notes
                  Padding(
                    padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
                    child: Container(
                      width: width,
                      height: height * 0.07,
                      decoration: BoxDecoration(
                        color: const Color(0xffFAFAFA),
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(color: AppColors.greyLightTextColor),
                      ),
                      child: const Padding(
                        padding: EdgeInsets.all(18.0),
                        child: TextWidget(text: 'Order Notes', color: Colors.grey),
                      ),
                    ),
                  ),

                  ///Doted Container
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                    child: DottedBorder(
                      color: AppColors.greyLightTextColor,
                      borderType: BorderType.RRect,
                      radius: Radius.circular(12),
                      child: ClipRRect(
                        borderRadius: const BorderRadius.all(Radius.circular(12)),
                        child: ListTile(
                          contentPadding: EdgeInsets.zero,
                          leading: Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: Image.asset('assets/png/percent.png'),
                          ),
                          title: const TextWidget(text: 'Use coupon code'),
                          trailing: Padding(
                            padding: const EdgeInsets.only(right: 8.0),
                            child: Icon(Icons.arrow_forward_ios_outlined, size: 16, color: AppColors.greyLightTextColor),
                          ),
                        ),
                      ),
                    ),
                  ),

                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 20, horizontal: 16),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        TextWidget(
                          text: 'Item Total',
                          weight: FontWeight.w400,
                          color: Colors.black,
                          fontSize: 14,
                        ),
                        TextWidget(
                          text: '\$15',
                          weight: FontWeight.w400,
                          color: Colors.black,
                          fontSize: 14,
                        ),
                      ],
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 10, horizontal: 16),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        TextWidget(
                          text: 'Devilry Cost',
                          weight: FontWeight.w400,
                          color: Colors.black,
                          fontSize: 14,
                        ),
                        TextWidget(
                          text: '\$5',
                          weight: FontWeight.w400,
                          color: Colors.black,
                          fontSize: 14,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Align(alignment: Alignment.bottomCenter, child: CustomModalBottomSheet()),
        ],
      ),
    );
  }
}
