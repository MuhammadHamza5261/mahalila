import 'package:flutter/cupertino.dart';

import 'customText.dart';

class DailyDealsWidget extends StatelessWidget {
  final String image;
  const DailyDealsWidget({super.key, required this.image});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Container(
      width: width * 0.45,
      height: height * 0.28,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        image: DecorationImage(image: AssetImage(image), fit: BoxFit.cover),
      ),
      child: const Align(
          alignment: Alignment.bottomLeft,
          child: Padding(
            padding: EdgeInsets.only(left: 12, bottom: 10),
            child: TextWidget(text: 'Watch', color: CupertinoColors.white, weight: FontWeight.w500),
          )),
    );
  }
}
