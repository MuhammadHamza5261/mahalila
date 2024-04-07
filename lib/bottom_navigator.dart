import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mahalila/screens/home/home_screen.dart';
import 'package:mahalila/screens/profile/order_history.dart';
import 'package:mahalila/screens/profile/profileScreen.dart';
import 'package:mahalila/utils/styles.dart';
import 'package:mahalila/wish_list.dart';

class NavigationScreen extends StatefulWidget {
  const NavigationScreen({super.key});

  @override
  State<NavigationScreen> createState() => _NavigationScreenState();
}

class _NavigationScreenState extends State<NavigationScreen> {
  int _currentIndex = 0;
  final List<Widget> _screens = [
    HomeScreen(),
    WishList(),
    OrderHistoryScreen(),
    Profile(),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: WillPopScope(
        onWillPop: () async {
          SystemNavigator.pop();
          return true;
        },
        child: Scaffold(
          body: _screens[_currentIndex],
          bottomNavigationBar: BottomAppBar(
            padding: EdgeInsets.zero,
            height: 70,
            elevation: 0,
            child: Row(
              children: [
                buildNavItem(0, Icons.widgets_outlined),
                buildNavItem(1, Icons.favorite_border),
                buildNavItem(2, Icons.calendar_month_outlined),
                buildNavItem(3, Icons.person_outline_sharp),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget buildNavItem(int index, IconData icon) {
    final isSelected = _currentIndex == index;
    return Expanded(
      child: GestureDetector(
        onTap: () {
          setState(() {
            _currentIndex = index;
          });
        },
        child: Container(
          height: 80,
          // padding: EdgeInsets.only(right: _currentIndex == 0 ? 5 : 0),
          color: AppColors.primaryColor,
          child: Icon(icon, color: Colors.white),
        ),
      ),
    );
  }
}
