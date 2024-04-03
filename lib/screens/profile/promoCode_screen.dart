import 'package:flutter/material.dart';

import '../../component/customAppBar.dart';

class PromoCodeScreen extends StatelessWidget {
  const PromoCodeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: CustomAppBar(
          title: 'Promo-Code',
          onTap: () {
            Navigator.pop(context);
          }),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: width * 0.03, vertical: height * 0.01),
        child: Column(
          children: [
            Container(
              height: height * 0.1,
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [BoxShadow(color: Colors.grey.shade100, offset: const Offset(0, 1), blurRadius: 2, spreadRadius: 2)],
                borderRadius: BorderRadius.circular(8),
                border: Border.all(color: Colors.grey.shade200),
              ),
              child: Padding(
                padding: EdgeInsets.only(left: width * 0.05),
                child: Row(
                  children: [
                    Image.asset('assets/png/gift.png', height: height * 0.1, width: width * 0.1),
                    Padding(
                      padding: EdgeInsets.only(left: width * 0.03),
                      child: RichText(
                        text: const TextSpan(
                          style: TextStyle(color: Colors.black, fontSize: 16),
                          children: [
                            TextSpan(text: 'Promocode', style: TextStyle(fontWeight: FontWeight.bold)),
                            TextSpan(text: ' : 02193-12'),
                          ],
                        ),
                      ),
                    ),
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
