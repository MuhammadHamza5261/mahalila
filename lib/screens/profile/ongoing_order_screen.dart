import 'package:flutter/material.dart';

import '../../component/customText.dart';

class OnGoingOrderScreen extends StatelessWidget {
  const OnGoingOrderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
      child: Column(
        children: [
          Container(
            height: 150,
            width: double.infinity,
            decoration: BoxDecoration(color: Colors.grey, borderRadius: BorderRadius.circular(8)),
            child: Stack(
              children: [
                Row(
                  children: [
                    ClipRRect(
                        borderRadius: BorderRadius.circular(14),
                        child: Image.asset('assets/png/coverImage.png', width: 80, height: 130, fit: BoxFit.cover)),
                  ],
                ),
                Positioned(
                  right: 0,
                  top: 0,
                  child: Container(
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(topRight: Radius.circular(25), bottomLeft: Radius.circular(15)),
                      color: Color(0xff53CB16),
                    ),
                    child: const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: TextWidget(text: '2 May 2024', color: Colors.white),
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
