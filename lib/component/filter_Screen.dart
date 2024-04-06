import 'package:flutter/material.dart';

import '../utils/styles.dart';
import 'customAppBar.dart';
import 'customButton.dart';
import 'customText.dart';

class RaffleFilterScreen extends StatefulWidget {
  const RaffleFilterScreen({super.key});

  @override
  State<RaffleFilterScreen> createState() => _RaffleFilterScreenState();
}

class _RaffleFilterScreenState extends State<RaffleFilterScreen> {
  String _selectedValDD1 = 'Category 1';
  String _selectedValDD2 = 'Category 1';
  String _selectedValDD3 = 'Category 1';
  final List<String> _dropdownItems = ['Category 1', 'Category 2', 'Category 3'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: 'Raffle Filter',
        onTap: () {
          Navigator.pop(context);
        },
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 12.0),
              child: TextWidget(text: 'Select Categories', fontSize: 16, weight: FontWeight.w600),
            ),
            Row(
              children: [
                Container(
                  width: 40,
                  height: 40,
                  // margin: EdgeInsets.only(left: index == 0 ? 0 : 8, right: index == 3 ? 0 : 8),
                  decoration: BoxDecoration(
                    color: AppColors.greyBgColor2,
                    border: Border.all(color: AppColors.btnBorderColor),
                    borderRadius: BorderRadius.circular(5),
                  ),
                ),
                Expanded(
                  child: DropdownButton<String>(
                    isExpanded: true,
                    value: _selectedValDD1,
                    style: TextStyle(color: AppColors.greyLightTextColor, fontSize: 18),
                    isDense: false,
                    underline: SizedBox(),
                    items: _dropdownItems.map((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                    onChanged: (String? newValue) {
                      setState(() {
                        _selectedValDD1 = newValue!;
                      });
                    },
                  ),
                ),
              ],
            ),
            const Divider(),
            Row(
              children: [
                Container(
                  width: 40,
                  height: 40,
                  // margin: EdgeInsets.only(left: index == 0 ? 0 : 8, right: index == 3 ? 0 : 8),
                  decoration: BoxDecoration(
                    color: AppColors.greyBgColor2,
                    border: Border.all(color: AppColors.btnBorderColor),
                    borderRadius: BorderRadius.circular(5),
                  ),
                ),
                Expanded(
                  child: DropdownButton<String>(
                    isExpanded: true,
                    value: _selectedValDD2,
                    isDense: false,
                    style: TextStyle(color: AppColors.greyLightTextColor, fontSize: 18),
                    underline: SizedBox(),
                    items: _dropdownItems.map((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                    onChanged: (String? newValue) {
                      setState(() {
                        _selectedValDD2 = newValue!;
                      });
                    },
                  ),
                ),
              ],
            ),
            const Divider(),
            Row(
              children: [
                Container(
                  width: 40,
                  height: 40,
                  // margin: EdgeInsets.only(left: index == 0 ? 0 : 8, right: index == 3 ? 0 : 8),
                  decoration: BoxDecoration(
                    color: AppColors.greyBgColor2,
                    border: Border.all(color: AppColors.btnBorderColor),
                    borderRadius: BorderRadius.circular(5),
                  ),
                ),
                Expanded(
                  child: DropdownButton<String>(
                    isExpanded: true,
                    value: _selectedValDD3,
                    style: TextStyle(color: AppColors.greyLightTextColor, fontSize: 18),
                    isDense: false,
                    underline: SizedBox(),
                    items: _dropdownItems.map((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                    onChanged: (String? newValue) {
                      setState(() {
                        _selectedValDD3 = newValue!;
                      });
                    },
                  ),
                ),
              ],
            ),
            const Divider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                CustomButton(
                  width: 110,
                  height: 40,
                  buttonColor: const Color(0xffFF2651),
                  radius: 8,
                  text: 'Reset',
                  onTap: () {},
                  fontSize: 16,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: CustomButton(
                    width: 110,
                    height: 40,
                    buttonColor: AppColors.primaryColor,
                    radius: 8,
                    text: 'Apply',
                    fontSize: 16,
                    onTap: () {
                      Navigator.pop(context);
                    },
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
