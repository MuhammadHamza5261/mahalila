import 'package:flutter/material.dart';
import 'package:mahalila/component/customText.dart';

import '../../component/customAppBar.dart';
import '../../component/customButton.dart';
import '../../component/customTextField.dart';
import '../../utils/styles.dart';

class ShippingAddressScreen extends StatefulWidget {
  const ShippingAddressScreen({super.key});

  @override
  State<ShippingAddressScreen> createState() => _ShippingAddressScreenState();
}

class _ShippingAddressScreenState extends State<ShippingAddressScreen> {
  final _cityController = TextEditingController();
  final _addressController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: CustomAppBar(
          title: 'Shipping Address',
          onTap: () {
            Navigator.pop(context);
          }),
      body: SingleChildScrollView(
        child: Padding(
            padding: const EdgeInsets.only(top: 20, left: 24, right: 26),
            child: Column(
              children: [
                CustomTextField(
                  controller: _cityController,
                  hints: 'City Center Manchester',
                  unSelectedRadius: 10,
                  selectedRadius: 10,
                  suffixIcon: Icons.check,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 14, bottom: 40),
                  child: TextFormField(
                      maxLines: 6,
                      controller: _addressController,
                      style: const TextStyle(fontWeight: FontWeight.w400, fontSize: 15),
                      decoration: InputDecoration(
                        // filled: true,
                        // focusColor: Colors.grey.shade100,
                        contentPadding: const EdgeInsets.only(left: 10),
                        hintText: 'Address',
                        hintStyle: const TextStyle(fontWeight: FontWeight.w400, fontSize: 15),
                        border:
                            OutlineInputBorder(borderRadius: BorderRadius.circular(10), borderSide: BorderSide(color: Colors.grey.shade50)),
                        // focusedBorder: OutlineInputBorder(
                        //     borderRadius: BorderRadius.circular(10), borderSide: BorderSide(color: AppColors.primaryColor)),
                      )),
                ),
                CustomButton(
                    width: double.infinity,
                    height: 50,
                    buttonColor: AppColors.primaryColor,
                    radius: 8,
                    text: 'SAVE',
                    onTap: () {
                      // Navigator.push(
                      //     context,
                      //     MaterialPageRoute(
                      //       builder: (context) => const BottomNavigatorsBar(),
                      //     ));
                    },
                    fontSize: 16,
                    weight: FontWeight.w400,
                    textColor: Colors.white),
                Padding(
                  padding: const EdgeInsets.only(top: 60, bottom: 20),
                  child: Container(
                    height: 140,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey.shade100, width: 2),
                      borderRadius: BorderRadius.circular(10),
                      color: Color(0xffFAFAFA),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 19, top: 14, right: 25),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          TextWidget(text: 'City Center Manchester ', fontSize: 14, color: AppColors.greyLightTextColor),
                          TextWidget(
                              text: 'Stanford Street, Man24 M22 Glassgow Road \nManchester \nEngland UK',
                              fontSize: 12,
                              color: AppColors.greyLightTextColor),
                          const Padding(
                            padding: EdgeInsets.only(top: 15),
                            child: Row(
                              children: [
                                TextWidget(text: 'Edit', fontSize: 14, color: Color(0xff6679F8)),
                                Spacer(),
                                TextWidget(text: 'Delete', fontSize: 14, color: Colors.red),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                )
              ],
            )),
      ),
    );
  }
}
