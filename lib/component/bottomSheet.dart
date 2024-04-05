import 'package:flutter/material.dart';

import '../utils/constants.dart';
import '../utils/styles.dart';
import 'bottom_sheet2.dart';
import 'customText.dart';

class CustomModalBottomSheet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextWidget(
                  text: 'Order Total',
                  weight: FontWeight.w400,
                  color: Colors.black,
                  fontSize: 16,
                ),
                TextWidget(
                  text: '\$1002',
                  weight: FontWeight.w400,
                  color: Colors.black,
                  fontSize: 16,
                ),
              ],
            ),
          ),
          InkWell(
            onTap: () {
              showModalBottomSheet(context: context, builder: (context) => CustomModalBottomSheet2());
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
