import 'package:flutter/material.dart';
import 'package:mahalila/component/customText.dart';
import 'package:mahalila/utils/styles.dart';

import '../../component/customButton.dart';
import 'address_bottom_sheet.dart';

class PaymentMethodBottomSheet extends StatefulWidget {
  @override
  State<PaymentMethodBottomSheet> createState() => _PaymentMethodBottomSheetState();
}

class _PaymentMethodBottomSheetState extends State<PaymentMethodBottomSheet> {
  String _groupValue = 'option 1';
  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: Column(crossAxisAlignment: CrossAxisAlignment.start, mainAxisSize: MainAxisSize.min, children: [
            const Align(
                alignment: Alignment.topRight,
                child: TextWidget(
                  text: 'x',
                  color: Colors.grey,
                  weight: FontWeight.w600,
                  fontSize: 22,
                )),
            const TextWidget(
              text: 'Choose Payment Method',
              weight: FontWeight.w600,
              fontSize: 20,
            ),

            ///Payment selection
            Padding(
              padding: const EdgeInsets.only(top: 12, bottom: 12),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    color: Colors.white.withOpacity(0.3),
                    width: 150,
                    height: 115,
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 10),
                          child: Image.asset('assets/png/applePay.png', width: 100),
                        ),
                        Align(
                          alignment: Alignment.bottomRight,
                          child: Radio(
                              activeColor: AppColors.primaryColor,
                              value: '1',
                              groupValue: _groupValue,
                              onChanged: (value) {
                                setState(() {
                                  _groupValue = value!;
                                });
                              }),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 12.0),
                    child: Container(
                      color: Colors.white.withOpacity(0.3),
                      width: 150,
                      height: 115,
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 10),
                            child: Image.asset('assets/png/applePay.png', width: 100),
                          ),
                          Align(
                            alignment: Alignment.bottomRight,
                            child: Radio(
                                activeColor: AppColors.primaryColor,
                                value: '2',
                                groupValue: _groupValue,
                                onChanged: (value) {
                                  setState(() {
                                    _groupValue = value!;
                                  });
                                }),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),

            const TextWidget(
              text: 'Credit Cards',
              weight: FontWeight.w600,
              fontSize: 18,
            ),

            ///Number
            Row(
              children: [
                const TextWidget(
                  text: '74575****566',
                  weight: FontWeight.w600,
                  fontSize: 14,
                  color: Colors.grey,
                ),
                const Spacer(),
                Radio(
                    activeColor: AppColors.primaryColor,
                    value: '3',
                    groupValue: _groupValue,
                    onChanged: (value) {
                      setState(() {
                        _groupValue = value!;
                      });
                    })
              ],
            ),
            const Divider(color: Colors.black12),
            Row(
              children: [
                const TextWidget(
                  text: '74575****545',
                  weight: FontWeight.w600,
                  fontSize: 14,
                  color: Colors.grey,
                ),
                const Spacer(),
                Radio(
                    activeColor: AppColors.primaryColor,
                    value: '4',
                    groupValue: _groupValue,
                    onChanged: (value) {
                      setState(() {
                        _groupValue = value!;
                      });
                    })
              ],
            ),
            const Divider(color: Colors.black12),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 12.0),
              child: CustomButton(
                width: double.infinity,
                height: 45,
                buttonColor: AppColors.primaryColor,
                radius: 10,
                textColor: Colors.white,
                text: 'Pay',
                onTap: () {
                  showModalBottomSheet(context: context, builder: (context) => AddressBottomSheet());
                },
              ),
            )
          ]),
        ));
  }
}
