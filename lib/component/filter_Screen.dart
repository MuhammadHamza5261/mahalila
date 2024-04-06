import 'package:flutter/material.dart';

import '../utils/styles.dart';
import 'customAppBar.dart';
import 'customButton.dart';
import 'customText.dart';

class FilterScreen extends StatefulWidget {
  const FilterScreen({super.key});

  @override
  State<FilterScreen> createState() => _FilterScreenState();
}

class _FilterScreenState extends State<FilterScreen> {
  int? _isSelected;
  double _currentValue = 0.0;
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: CustomAppBar(
          title: 'Filters',
          onTap: () {
            Navigator.pop(context);
          }),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: width * 0.04, vertical: height * 0.02),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ///Sort By
              TextWidget(text: 'Sort By', fontSize: width * 0.043, weight: FontWeight.w800),

              ///price filter
              _selectThePricing(0, 'Price Low To High'),
              _selectThePricing(0, 'Price High To Low'),

              Padding(
                padding: EdgeInsets.only(top: height * 0.03),
                child: TextWidget(text: 'Product', fontSize: width * 0.038, weight: FontWeight.w500),
              ),
              const ListTile(
                contentPadding: EdgeInsets.zero,
                title: TextWidget(
                  text: 'Laptop',
                ),
                trailing: Icon(Icons.keyboard_arrow_down, color: Colors.grey),
              ),

              Padding(
                padding: EdgeInsets.only(top: height * 0.01),
                child: TextWidget(
                  text: 'Brand',
                  fontSize: width * 0.038,
                  weight: FontWeight.w500,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 8, bottom: height * 0.04),
                child: const TextWidget(
                  text: 'Audionic',
                ),
              ),

              ///Slider
              TextWidget(text: 'Price', fontSize: width * 0.04),
              Slider(
                thumbColor: AppColors.primaryColor,
                activeColor: Colors.black,
                value: _currentValue,
                min: 0,
                max: 100,
                onChanged: (double value) {
                  setState(() {
                    _currentValue = value;
                  });
                },
              ),
              Row(
                children: [
                  TextWidget(text: '\$5', fontSize: width * 0.036, color: AppColors.greyLightTextColor),
                  const Spacer(),
                  TextWidget(text: '\$5000', fontSize: width * 0.036, color: AppColors.greyLightTextColor),
                ],
              ),
              // gapH(height * 0.03),

              Padding(
                padding: EdgeInsets.only(top: height * 0.02),
                child: Align(
                  alignment: Alignment.centerRight,
                  child: CustomButton(
                      width: 100,
                      height: 40,
                      buttonColor: AppColors.primaryColor,
                      radius: 8,
                      text: 'Apply',
                      onTap: () {},
                      textColor: Colors.white),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget _selectThePricing(int index, String text) {
    final width = MediaQuery.of(context).size.width;
    return GestureDetector(
      onTap: () {
        setState(() {
          _isSelected = index == _isSelected ? null : index;
        });
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 3),
        child: Container(
          padding: const EdgeInsets.only(bottom: 10, top: 16),
          decoration: BoxDecoration(
            border: Border(bottom: BorderSide(color: Colors.grey.withOpacity(0.3))),
          ),
          child: Row(
            children: [
              TextWidget(
                text: text,
                fontSize: width * 0.038,
                color: Colors.grey,
              ),
              const Spacer(),
              if (_isSelected == index) const Icon(Icons.check),
            ],
          ),
        ),
      ),
    );
  }
}
