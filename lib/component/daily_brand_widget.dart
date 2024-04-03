import 'package:flutter/cupertino.dart';

class DailyDealsWidget extends StatelessWidget {
  final String image;
  const DailyDealsWidget({super.key, required this.image});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Padding(
      padding: EdgeInsets.only(right: width * 0.025),
      child: Container(
        width: width * 0.45,
        height: height * 0.28,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          image: DecorationImage(image: AssetImage(image), fit: BoxFit.cover),
        ),
      ),
    );
  }
}
