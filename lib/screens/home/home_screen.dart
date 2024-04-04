import 'package:flutter/material.dart';
import 'package:mahalila/component/customText.dart';
import 'package:mahalila/utils/styles.dart';

import '../../component/daily_brand_widget.dart';
import '../../component/for_sale_widget.dart';
import '../../component/popular_brand_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentImageIndex = 0;
  List<String> imagesPath = [
    'assets/png/slider.png',
    'assets/png/slider.png',
    'assets/png/slider.png',
  ];
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: height * 0.005, horizontal: width * 0.03),
          child: SingleChildScrollView(
            child: Column(
              children: [
                ///App bar
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Image.asset('assets/png/menu.png', width: width * 0.08, height: height * 0.1),
                        Padding(
                          padding: const EdgeInsets.only(left: 8.0),
                          child: Image.asset('assets/png/logo.png', width: width * 0.37, height: height * 0.07),
                        ),
                      ],
                    ),
                    Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: AppColors.primaryColor,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: Image.asset('assets/png/cart.png', width: width * 0.08, height: height * 0.1),
                      ),
                    )
                  ],
                ),

                ///Text filed for search
                TextFormField(
                  decoration: InputDecoration(
                    hintText: 'Search',
                    prefixIcon: Image.asset('assets/png/search.png', width: 10, height: 10),
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
                    focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
                  ),
                ),

                ///Slider Image
                SizedBox(
                  height: 200,
                  child: PageView.builder(
                    itemCount: imagesPath.length,
                    onPageChanged: (index) {
                      setState(() {
                        _currentImageIndex = index;
                      });
                    },
                    itemBuilder: (context, index) {
                      return ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Image.asset(
                          imagesPath[index],
                          height: 200,
                          width: double.infinity,
                          fit: BoxFit.fill,
                        ),
                      );
                    },
                  ),
                ),
                _dotIndicator(),

                ///For Scale
                Padding(
                  padding: EdgeInsets.symmetric(vertical: height * 0.02),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TextWidget(text: 'For Scale', weight: FontWeight.bold, fontSize: width * 0.04),
                      const TextWidget(text: 'View all'),
                    ],
                  ),
                ),
                const SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      ForSaleWidget(image: 'assets/png/watch2.png'),
                      ForSaleWidget(image: 'assets/png/product2.png'),
                      ForSaleWidget(image: 'assets/png/product1.png'),
                      ForSaleWidget(image: 'assets/png/watch2.png'),
                    ],
                  ),
                ),

                ///Popular Brand
                Padding(
                  padding: EdgeInsets.symmetric(vertical: height * 0.02),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TextWidget(text: 'Popular Brand', weight: FontWeight.bold, fontSize: width * 0.04),
                      const TextWidget(text: 'View all'),
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
                  padding: EdgeInsets.symmetric(vertical: height * 0.02),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TextWidget(text: 'Daily Deals', weight: FontWeight.bold, fontSize: width * 0.04),
                      const TextWidget(text: 'view all'),
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
            ),
          ),
        ),
      ),
    );
  }

  ///Doted of image indicator progress
  Widget _dotIndicator() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(imagesPath.length, (index) {
        return Container(
          width: 12,
          height: 12,
          margin: const EdgeInsets.symmetric(horizontal: 5),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: _currentImageIndex == index ? AppColors.primaryColor : Colors.grey,
          ),
        );
      }),
    );
  }
}
