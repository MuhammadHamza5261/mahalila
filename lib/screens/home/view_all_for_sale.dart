import 'package:flutter/material.dart';
import 'package:mahalila/component/customAppBar2.dart';
import 'package:mahalila/component/customText.dart';
import 'package:mahalila/component/search_Textfield.dart';

import '../../utils/styles.dart';

class ViewAllForSale extends StatefulWidget {
  const ViewAllForSale({super.key});

  @override
  State<ViewAllForSale> createState() => _ViewAllForSaleState();
}

class _ViewAllForSaleState extends State<ViewAllForSale> {
  final _searchController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: CustomAppBar2(
        title: 'For Sale',
        onTap: () {
          Navigator.pop(context);
        },
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SearchTextField(
              controller: _searchController,
              hints: 'Find your items',
            ),
            Padding(
              padding: const EdgeInsets.only(top: 18.0),
              child: Container(
                width: width / 2.4,
                height: height * 0.3,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: SizedBox(
                          width: width,
                          height: height * 0.2,
                          child: Image.asset(
                            'assets/png/watch2.png',
                            fit: BoxFit.cover,
                          )),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: width * 0.02, vertical: height * 0.006),
                      child: Row(
                        children: [
                          TextWidget(text: 'AirPods Pro \nBlack ', fontSize: width * 0.03),
                          const Spacer(),
                          Icon(Icons.star, size: width * 0.05, color: Colors.amber),
                          TextWidget(text: '4.9', fontSize: width * 0.032),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: width * 0.02, vertical: height * 0.006),
                      child: Row(
                        children: [
                          TextWidget(text: '\$49.99', fontSize: width * 0.04, weight: FontWeight.w600),
                          const Spacer(),
                          Container(
                            width: 30,
                            height: 30,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(11),
                              color: AppColors.primaryColor,
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(6.0),
                              child: Center(child: Image.asset('assets/png/buy.png')),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
