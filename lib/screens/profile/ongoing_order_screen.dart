import 'package:flutter/material.dart';
import 'package:mahalila/utils/styles.dart';

import '../../component/ongoing_order_widget.dart';

class OnGoingOrderScreen extends StatelessWidget {
  const OnGoingOrderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: width * 0.04, vertical: height * 0.02),
      child: Column(
        children: [
          OnGoingOrderWidget(
              productImage: 'assets/png/product1.png', color1: AppColors.greenColor, color2: AppColors.greenColor, onGoingContainer: true),
          OnGoingOrderWidget(
              productImage: 'assets/png/product2.png', color1: AppColors.blueColor, color2: AppColors.blueColor, onGoingContainer: true),
          OnGoingOrderWidget(
              productImage: 'assets/png/product1.png',
              color1: AppColors.orangeColor,
              color2: AppColors.orangeColor,
              onGoingContainer: true),
        ],
      ),
    );
  }
}
