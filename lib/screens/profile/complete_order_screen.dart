import 'package:flutter/cupertino.dart';

import '../../component/ongoing_order_widget.dart';
import '../../utils/styles.dart';

class CompleteOrderScreen extends StatelessWidget {
  const CompleteOrderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        OnGoingOrderWidget(
            productImage: 'assets/png/product1.png', color1: AppColors.greenColor, color2: AppColors.greenColor, onGoingContainer: false),
        OnGoingOrderWidget(
            productImage: 'assets/png/product2.png', color1: AppColors.blueColor, color2: AppColors.blueColor, onGoingContainer: false),
      ],
    );
  }
}
