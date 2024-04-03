import 'package:flutter/cupertino.dart';

class ForSaleWidget extends StatelessWidget {
  final String image;
  const ForSaleWidget({super.key, required this.image});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Padding(
      padding: EdgeInsets.only(right: width * 0.025),
      child: Container(
        width: width * 0.3,
        height: height * 0.2,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          image: DecorationImage(image: AssetImage(image), fit: BoxFit.cover),
        ),
      ),
    );
  }
}
