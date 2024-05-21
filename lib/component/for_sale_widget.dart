import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mahalila/component/customText.dart';
import 'package:mahalila/product_details_screen.dart';

class ForSaleWidget extends StatelessWidget {
  final String image;
  final String title;
  const ForSaleWidget({super.key, required this.image, required this.title});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Padding(
      padding: EdgeInsets.only(right: width * 0.025),
      child: InkWell(
        onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) => ProductDetailsScreen()));
        },
        child: Container(
          width: width * 0.3,
          height: height * 0.2,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            image: DecorationImage(image: AssetImage(image), fit: BoxFit.cover),
          ),
          child: Align(
              alignment: Alignment.bottomLeft,
              child: Padding(
                padding: const EdgeInsets.only(left: 12, bottom: 10),
                child: TextWidget(text: title, color: CupertinoColors.white, weight: FontWeight.w500),
              )),
        ),
      ),
    );
  }
}
