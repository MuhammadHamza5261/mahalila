import 'package:flutter/material.dart';
import 'package:mahalila/screens/home/view_all_for_sale.dart';

import '../../component/customText.dart';
import '../../component/daily_brand_widget.dart';
import '../../component/for_sale_widget.dart';
import '../../component/popular_brand_widget.dart';

class AirPodsTab extends StatelessWidget {
  const AirPodsTab({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Column(
      children: [
        ///For Scale
        Padding(
          padding: EdgeInsets.symmetric(vertical: height * 0.02),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              TextWidget(text: 'For Scale', weight: FontWeight.bold, fontSize: width * 0.04),
              GestureDetector(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => ViewAllForSale()));
                  },
                  child: const TextWidget(text: 'View all', color: Colors.grey)),
            ],
          ),
        ),
        const SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              ForSaleWidget(image: 'assets/png/watch2.png'),
              ForSaleWidget(image: 'assets/png/watch2.png'),
              ForSaleWidget(image: 'assets/png/watch2.png'),
              ForSaleWidget(image: 'assets/png/watch2.png'),
            ],
          ),
        ),

        ///Popular Brand
        Padding(
          padding: EdgeInsets.only(top: height * 0.03, bottom: height * 0.02),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              TextWidget(text: 'Popular Brand', weight: FontWeight.bold, fontSize: width * 0.04),
              const TextWidget(text: 'View all', color: Colors.grey),
            ],
          ),
        ),
        const SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              PopularBrandWidget(image: 'assets/png/laptop.png'),
              PopularBrandWidget(image: 'assets/png/laptop.png'),
            ],
          ),
        ),

        ///Daily Deals
        Padding(
          padding: EdgeInsets.only(top: height * 0.03, bottom: height * 0.02),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              TextWidget(text: 'Daily Deals', weight: FontWeight.bold, fontSize: width * 0.04),
              const TextWidget(text: 'View all', color: Colors.grey),
            ],
          ),
        ),
        const SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              DailyDealsWidget(image: 'assets/png/watch2.png'),
              DailyDealsWidget(image: 'assets/png/watch2.png'),
              DailyDealsWidget(image: 'assets/png/watch2.png'),
              DailyDealsWidget(image: 'assets/png/watch2.png'),
            ],
          ),
        ),
      ],
    );
  }
}
