import 'package:flutter/material.dart';
import 'package:mahalila/component/customText.dart';
import 'package:mahalila/utils/styles.dart';

import 'airpods_tab.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool isNotificationScreen = true;
  int _selectedIndex = 0;
  final PageController _pageController = PageController();
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
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: height * 0.005, horizontal: width * 0.05),
          child: Column(
            children: [
              ///App bar
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Image.asset('assets/png/menu.png', width: width * 0.07, height: height * 0.1),
                      Padding(
                        padding: const EdgeInsets.only(left: 10.0),
                        child: Image.asset('assets/png/logo.png', width: width * 0.36, height: height * 0.05),
                      ),
                    ],
                  ),
                  Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: AppColors.primaryColor,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(3.0),
                      child: Image.asset('assets/png/cart.png', width: width * 0.065, height: height * 0.1),
                    ),
                  )
                ],
              ),

              ///Text filed for search
              TextFormField(
                decoration: InputDecoration(
                    filled: true,
                    fillColor: const Color(0xffFAFAFA),
                    hintText: 'Search',
                    prefixIcon: Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Image.asset('assets/png/search.png', width: 5),
                    ),
                    enabledBorder:
                        OutlineInputBorder(borderRadius: BorderRadius.circular(8), borderSide: const BorderSide(color: Color(0xffEBEEF0))),
                    focusedBorder:
                        OutlineInputBorder(borderRadius: BorderRadius.circular(8), borderSide: BorderSide(color: AppColors.primaryColor))),
              ),

              Padding(
                padding: EdgeInsets.only(top: height * 0.02),
                child: Stack(
                  children: [
                    SizedBox(
                      height: 190,
                      child: PageView.builder(
                        itemCount: imagesPath.length,
                        onPageChanged: (index) {
                          setState(() {
                            _currentImageIndex = index;
                          });
                        },
                        itemBuilder: (context, index) {
                          return Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(0),
                                image: DecorationImage(
                                  image: AssetImage(imagesPath[index]),
                                  fit: BoxFit.cover,
                                )),
                          );
                        },
                      ),
                    ),
                    Positioned(
                      top: height * 0.02,
                      left: width * 0.03,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const TextWidget(
                            text: 'Dell Latitude 7490 Laptop Core - \ni5-8250U 8th Gen',
                            color: Colors.white,
                            weight: FontWeight.w500,
                          ),
                          Row(
                            children: [
                              Icon(Icons.star, color: Colors.amber, size: width * 0.05),
                              RichText(
                                text: TextSpan(
                                  style: const TextStyle(
                                    color: Colors.black,
                                    fontSize: 18.0,
                                  ),
                                  children: <TextSpan>[
                                    TextSpan(
                                      text: '4.9',
                                      style: TextStyle(color: Colors.white, fontSize: width * 0.038),
                                    ),
                                    TextSpan(text: ' (212k reviews)', style: TextStyle(color: Colors.white, fontSize: width * 0.03)),
                                  ],
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                    Positioned(
                      bottom: height * 0.02,
                      right: width * 0.04,
                      child: TextWidget(
                        text: '40% Off',
                        fontSize: width * 0.065,
                        color: Colors.white,
                        weight: FontWeight.w700,
                      ),
                    ),
                  ],
                ),
              ),
              _dotIndicator(),

              ///Tabs
              SizedBox(
                height: height * 0.1,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    pageViewButton(0, 'Notification'),
                    pageViewButton(1, 'Messages'),
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
                    AirPodsTab(),
                  ],
                ),
              )
            ],
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
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(index == 0 ? 8 : 0),
              bottomLeft: Radius.circular(index == 0 ? 8 : 0),
              bottomRight: Radius.circular(index == 1 ? 8 : 0),
              topRight: Radius.circular(index == 1 ? 8 : 0)),
          color: _selectedIndex == index ? AppColors.primaryColor : Colors.transparent,
        ),
        child: Center(
            child: TextWidget(
          text: name,
          fontSize: width * 0.04,
        )),
      ),
    );
  }
}
