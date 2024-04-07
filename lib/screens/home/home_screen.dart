import 'package:flutter/material.dart';
import 'package:mahalila/component/customText.dart';
import 'package:mahalila/screens/cart/my_cart_screen.dart';
import 'package:mahalila/screens/home/view_all_for_sale.dart';
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
    final appBarHeight = height * 0.1;
    final searchBarHeight = height * 0.07;
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: height * 0.005, horizontal: width * 0.05),
          child: Column(
            children: [
              ///App bar (height * 0.1)
              SizedBox(
                height: appBarHeight,
                child: Row(
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
                    InkWell(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => MyCartScreen()));
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: AppColors.primaryColor,
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(3.0),
                          child: Image.asset('assets/png/cart.png', width: width * 0.065, height: height * 0.1),
                        ),
                      ),
                    )
                  ],
                ),
              ),

              ///Text filed for search  (height * 0.07)
              SizedBox(
                height: searchBarHeight,
                child: TextFormField(
                  decoration: InputDecoration(
                      filled: true,
                      fillColor: const Color(0xffFAFAFA),
                      hintText: 'Search',
                      prefixIcon: Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Image.asset('assets/png/search.png', width: 5),
                      ),
                      enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(8), borderSide: const BorderSide(color: Color(0xffEBEEF0))),
                      focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(8), borderSide: BorderSide(color: AppColors.primaryColor))),
                ),
              ),

              SizedBox(
                height: height - (appBarHeight + searchBarHeight * 1.15),
                child: ListView(
                  children: [
                    /// First slider (images/offers)
                    Padding(
                      padding: EdgeInsets.only(top: height * 0.02),
                      child: SizedBox(
                        height: 190,
                        child: PageView.builder(
                          itemCount: imagesPath.length,
                          onPageChanged: (index) {
                            setState(() {
                              _currentImageIndex = index;
                            });
                          },
                          itemBuilder: (context, index) {
                            return Stack(
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(0),
                                    image: DecorationImage(
                                      image: AssetImage(imagesPath[index]),
                                      fit: BoxFit.cover,
                                    ),
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
                            );
                          },
                        ),
                      ),
                    ),
                    _dotIndicator(),

                    ///Tabs
                    SizedBox(
                      height: height * 0.1,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          pageViewButton(0, 'Airpods'),
                          Padding(
                            padding: const EdgeInsets.only(left: 10.0),
                            child: pageViewButton(1, 'Laptops'),
                          ),
                        ],
                      ),
                    ),

                    /// For Scale
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
                    SizedBox(
                      height: height * 0.2,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: const [
                          ForSaleWidget(image: 'assets/png/watch2.png'),
                          ForSaleWidget(image: 'assets/png/watch2.png'),
                          ForSaleWidget(image: 'assets/png/watch2.png'),
                          ForSaleWidget(image: 'assets/png/watch2.png'),
                        ],
                      ),
                    ),

                    // Popular Brand
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
                    SizedBox(
                      height: height * 0.22,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          PopularBrandWidget(image: 'assets/png/laptop.png'),
                          PopularBrandWidget(image: 'assets/png/laptop.png'),
                        ],
                      ),
                    ),

                    //Daily Deals
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
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: SizedBox(
                        height: height * 0.28,
                        child: Row(
                          children: [
                            DailyDealsWidget(image: 'assets/png/watch2.png'),
                            DailyDealsWidget(image: 'assets/png/watch2.png'),
                            DailyDealsWidget(image: 'assets/png/watch2.png'),
                            DailyDealsWidget(image: 'assets/png/watch2.png'),
                          ],
                        ),
                      ),
                    ),
                    // SizedBox(
                    //   height: 300,
                    //   child: Expanded(
                    //     child: PageView(
                    //       controller: _pageController,
                    //       onPageChanged: (index) {
                    //         setState(() {
                    //           _selectedIndex = index;
                    //         });
                    //       },
                    //       children: const [
                    //         AirPodsTab(),
                    //       ],
                    //     ),
                    //   ),
                    // )
                  ],
                ),
              ),
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
        height: height * 0.063,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: _selectedIndex == index ? AppColors.primaryColor : Colors.white,
        ),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset('assets/png/airpods.png'),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10.0),
              child: TextWidget(
                text: name,
                fontSize: width * 0.04,
                weight: FontWeight.w500,
                color: _selectedIndex == index ? Colors.white : AppColors.primaryColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
