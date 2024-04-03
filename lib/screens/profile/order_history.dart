import 'package:flutter/material.dart';
import 'package:mahalila/component/customAppBar.dart';

import '../../component/customText.dart';
import '../../utils/styles.dart';
import 'complete_order_screen.dart';
import 'ongoing_order_screen.dart';

class OrderHistoryScreen extends StatefulWidget {
  const OrderHistoryScreen({super.key});

  @override
  State<OrderHistoryScreen> createState() => _OrderHistoryScreenState();
}

class _OrderHistoryScreenState extends State<OrderHistoryScreen> {
  bool isNotificationScreen = true;
  int _selectedIndex = 0;
  final PageController _pageController = PageController();
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: CustomAppBar(
          title: 'Order History',
          onTap: () {
            Navigator.pop(context);
          }),
      body: Column(
        children: [
          SizedBox(
            height: height * 0.1,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                pageViewButton(0, 'Ongoing Order'),
                pageViewButton(1, 'Completed Order'),
              ],
            ),
          ),
          Expanded(
            child: PageView(
              controller: _pageController,
              onPageChanged: (index) {
                setState(() {
                  _selectedIndex = index;
                });
              },
              children: const [
                OnGoingOrderScreen(),
                CompleteOrderScreen(),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget pageViewButton(int index, String name) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return GestureDetector(
      onTap: () {
        setState(() {
          _selectedIndex = index;
          _pageController.animateToPage(index, duration: const Duration(milliseconds: 300), curve: Curves.easeIn);
        });
      },
      child: Container(
        width: width * 0.38,
        height: height * 0.05,
        decoration: BoxDecoration(),
        child: Center(
            child: TextWidget(
          text: name,
          fontSize: width * 0.04,
          color: _selectedIndex == index ? AppColors.primaryColor : Colors.grey,
        )),
      ),
    );
  }
}
