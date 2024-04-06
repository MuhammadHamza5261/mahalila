import 'package:flutter/cupertino.dart';

class PopularBrandWidget extends StatelessWidget {
  final String image;
  const PopularBrandWidget({super.key, required this.image});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Padding(
      padding: EdgeInsets.only(right: width * 0.025),
      child: Container(
        width: width * 0.8,
        height: height * 0.22,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          image: DecorationImage(image: AssetImage(image), fit: BoxFit.cover),
        ),
      ),
    );
  }
}
