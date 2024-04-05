import 'package:flutter/material.dart';

import '../screens/cart/paymentMethod.dart';
import '../utils/constants.dart';
import '../utils/styles.dart';
import 'customText.dart';

class CustomModalBottomSheet2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextWidget(
                  text: 'Item Total',
                  weight: FontWeight.w400,
                  color: Colors.black,
                  fontSize: 16,
                ),
                TextWidget(
                  text: '\$20',
                  weight: FontWeight.w400,
                  color: Colors.black,
                  fontSize: 16,
                ),
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextWidget(
                  text: 'Delivery Cost',
                  weight: FontWeight.w400,
                  color: Colors.black,
                  fontSize: 16,
                ),
                TextWidget(
                  text: '\$5',
                  weight: FontWeight.w400,
                  color: Colors.black,
                  fontSize: 16,
                ),
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(bottom: 16.0),
            child: TextWidget(text: '--------------------------------------------------------------'),
          ),
          InkWell(
            onTap: () {
              Navigator.pop(context);
              showModalBottomSheet(context: context, builder: (context) => PaymentMethodBottomSheet());
            },
            child: Container(
              height: 50,
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: kPadding),
              decoration: BoxDecoration(
                color: AppColors.primaryColor,
                borderRadius: BorderRadius.circular(12),
              ),
              child: const Align(
                alignment: Alignment.centerLeft,
                child: Center(
                  child: Text(
                    "Go to checkout",
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
