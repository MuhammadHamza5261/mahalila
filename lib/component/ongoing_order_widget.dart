import 'package:flutter/material.dart';

import 'customText.dart';

class OnGoingOrderWidget extends StatelessWidget {
  final String productImage;
  final Color color1;
  final Color color2;
  final bool onGoingContainer;
  const OnGoingOrderWidget(
      {super.key, required this.productImage, required this.color1, required this.color2, this.onGoingContainer = true});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Padding(
      padding: const EdgeInsets.only(bottom: 15),
      child: Container(
        height: height * 0.18,
        width: double.infinity,
        decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: const [
              BoxShadow(
                blurRadius: 5,
                color: Colors.black12,
                offset: Offset(0, 1),
              )
            ],
            borderRadius: BorderRadius.circular(8)),
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Row(
                children: [
                  ClipRRect(
                      borderRadius: BorderRadius.circular(14), child: Image.asset(productImage, width: 80, height: 130, fit: BoxFit.cover)),
                  Padding(
                    padding: EdgeInsets.only(left: width * 0.015, top: height * 0.008),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const TextWidget(text: 'Order ID : 02193-12', weight: FontWeight.w600),
                        Padding(
                          padding: EdgeInsets.symmetric(vertical: height * 0.006),
                          child: TextWidget(
                              text: 'Comparisons + headphones +\n Black + Extra Charger', color: Colors.grey, fontSize: width * 0.035),
                        ),
                        const TextWidget(text: '\$ 210.00', weight: FontWeight.w600),

                        ///ongoing order Container
                        if (onGoingContainer)
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: color1,
                            ),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 3),
                              child: TextWidget(
                                text: 'Dispatched',
                                color: Colors.white,
                                fontSize: width * 0.03,
                              ),
                            ),
                          ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            Positioned(
              right: 0,
              top: 0,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.only(topRight: Radius.circular(25), bottomLeft: Radius.circular(15)),
                  color: color2,
                ),
                child: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: TextWidget(text: '2 May 2024', color: Colors.white),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
