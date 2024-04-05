import 'package:flutter/material.dart';
import 'package:mahalila/bottom_navigator.dart';
import 'package:mahalila/component/customText.dart';

import '../../utils/constants.dart';
import '../../utils/styles.dart';

class AddressBottomSheet extends StatefulWidget {
  @override
  State<AddressBottomSheet> createState() => _AddressBottomSheetState();
}

class _AddressBottomSheetState extends State<AddressBottomSheet> {
  String _groupValue = 'option 1';
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 16),
            child: TextWidget(
              text: 'Choose Delivery Address',
              weight: FontWeight.w600,
              color: Colors.black,
              fontSize: 18,
            ),
          ),
          ListTile(
            title: const Text('Home'),
            subtitle: const Text('8000 S Kirkland Ave, Chicago, IL 606...'),
            trailing: Radio(
              value: '1',
              groupValue: _groupValue, // You can set the appropriate group value here
              onChanged: (value) {
                setState(() {
                  _groupValue = value!;
                });
              },
            ),
          ),
          ListTile(
            title: const Text('Work'),
            subtitle: const Text('6391 Elgin St. Celina, Delaware 10299'),
            trailing: Radio(
              value: '2',
              groupValue: _groupValue, // You can set the appropriate group value here
              onChanged: (value) {
                setState(() {
                  _groupValue = value!;
                });
              },
            ),
          ),
          ListTile(
            title: const Text('Other'),
            subtitle: const Text('3891 Ranchview Dr. Richardson, Califo...'),
            trailing: Radio(
              value: '2',
              groupValue: _groupValue, // You can set the appropriate group value here
              onChanged: (value) {
                setState(() {
                  _groupValue = value!;
                });
              },
            ),
          ),
          ListTile(
            title: const Text('Current Location'),
            subtitle: const Text('8000 S Kirkland Ave, Chicago, IL 606...'),
            trailing: Radio(
              value: '4',
              groupValue: _groupValue, // You can set the appropriate group value here
              onChanged: (value) {
                setState(() {
                  _groupValue = value!;
                });
              },
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => NavigationScreen()));
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
                    "Confirm Order",
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
