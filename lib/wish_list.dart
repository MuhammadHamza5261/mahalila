import 'package:flutter/material.dart';
import 'package:mahalila/component/customAppBar2.dart';
import 'package:mahalila/component/customButton.dart';
import 'package:mahalila/component/customText.dart';
import 'package:mahalila/utils/styles.dart';

class WishList extends StatelessWidget {
  const WishList({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: CustomAppBar2(
        title: 'Wishlist',
        onTap: () {
          // Navigator.pop(context);
        },
        image: 'assets/png/cart.png',
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          children: [
            for (int i = 0; i <= 2; i++)
              Stack(
                children: [
                  Container(
                    width: width,
                    height: height * 0.18,
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
                              TextWidget(text: 'AirPods Pro \nBlack'),
                              Padding(
                                padding: EdgeInsets.only(top: 14.0, bottom: 14),
                                child: TextWidget(
                                  text: '\$2900',
                                  fontSize: 16,
                                  weight: FontWeight.w700,
                                ),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Icon(Icons.star, size: 16, color: Color(0xff47CEC7)),
                                  TextWidget(text: '4.7', fontSize: 10),
                                ],
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  Positioned(right: 10, top: 10, child: Image.asset('assets/png/delete.png', width: 15)),
                  Positioned(
                      bottom: 14,
                      right: 10,
                      child: CustomButton(
                        width: 120,
                        height: 35,
                        buttonColor: AppColors.primaryColor,
                        radius: 5,
                        textColor: Colors.white,
                        text: 'Add to cart',
                        onTap: () {},
                      ))
                ],
              ),
          ],
        ),
      ),
    );
  }
}
