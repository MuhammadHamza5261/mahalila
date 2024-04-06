import 'package:flutter/material.dart';
import 'package:mahalila/component/customText.dart';
import 'package:mahalila/utils/styles.dart';

class ProductDetailsScreen extends StatefulWidget {
  const ProductDetailsScreen({super.key});

  @override
  State<ProductDetailsScreen> createState() => _ProductDetailsScreenState();
}

class _ProductDetailsScreenState extends State<ProductDetailsScreen> {
  bool isChecked1 = false;
  bool isChecked2 = false;
  bool isChecked3 = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Image.asset('assets/png/laptop2.png', height: 260, width: double.infinity, fit: BoxFit.cover),
            Positioned(
              top: 20,
              left: 10,
              child: InkWell(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Container(
                  width: 35,
                  height: 35,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: AppColors.primaryColor,
                  ),
                  child: const Icon(
                    Icons.arrow_back_outlined,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            Positioned(
              top: 20,
              right: 10,
              child: Container(
                width: 35,
                height: 35,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: AppColors.primaryColor,
                ),
                child: const Icon(
                  Icons.favorite_border,
                  color: Colors.white,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 240.0),
              child: Container(
                width: double.infinity,
                decoration: const BoxDecoration(
                    color: Color(0xffFCFCFC),
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(20),
                      topLeft: Radius.circular(20),
                    )),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: SingleChildScrollView(
                    child: Stack(
                      children: [
                        Positioned(
                          top: 5,
                          right: 10,
                          child: Container(
                              width: 90,
                              height: 30,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Colors.redAccent,
                              ),
                              child: const Center(
                                child: TextWidget(
                                  text: '20% off',
                                  color: Colors.white,
                                  fontSize: 12,
                                ),
                              )),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const TextWidget(text: 'Dell Latitude 7490 Laptop \nCore-i5-8250U ', weight: FontWeight.w500, fontSize: 20),
                            const TextWidget(
                              text:
                                  'These are some of the ground rules if you work at Netflix. They are part of a unique cultural experiment that explains  More..',
                              weight: FontWeight.w400,
                              color: Colors.grey,
                            ),
                            const Padding(
                              padding: EdgeInsets.only(top: 16.0),
                              child: TextWidget(
                                text: 'Specifications',
                                weight: FontWeight.w500,
                                fontSize: 18,
                              ),
                            ),
                            const Row(
                              children: [
                                Icon(Icons.circle, size: 15, color: Colors.grey),
                                Padding(
                                  padding: EdgeInsets.only(left: 8.0),
                                  child: TextWidget(
                                    text: 'Processor: Intel i5 or equivalent AMD ',
                                    weight: FontWeight.w400,
                                    color: Colors.grey,
                                    fontSize: 14,
                                  ),
                                ),
                              ],
                            ),
                            const Row(
                              children: [
                                Icon(Icons.circle, size: 15, color: Colors.grey),
                                Padding(
                                  padding: EdgeInsets.only(left: 8.0),
                                  child: TextWidget(
                                    text: 'Memory: 8 GB RAM minimum',
                                    weight: FontWeight.w400,
                                    color: Colors.grey,
                                    fontSize: 14,
                                  ),
                                ),
                              ],
                            ),
                            const Row(
                              children: [
                                Icon(Icons.circle, size: 15, color: Colors.grey),
                                Padding(
                                  padding: EdgeInsets.only(left: 8.0),
                                  child: TextWidget(
                                    text: 'Storage: 500 GB solid state (SSD) minimum',
                                    weight: FontWeight.w400,
                                    color: Colors.grey,
                                    fontSize: 14,
                                  ),
                                ),
                              ],
                            ),
                            const Row(
                              children: [
                                Icon(Icons.circle, size: 15, color: Colors.grey),
                                Padding(
                                  padding: EdgeInsets.only(left: 8.0),
                                  child: TextWidget(
                                    text: 'Web camera and mic ',
                                    weight: FontWeight.w400,
                                    color: Colors.grey,
                                    fontSize: 14,
                                  ),
                                ),
                              ],
                            ),

                            ///drop down
                            ListTile(
                              title: RichText(
                                text: const TextSpan(
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 18.0,
                                  ),
                                  children: <TextSpan>[
                                    TextSpan(text: 'Extra ', style: TextStyle(fontSize: 16)),
                                    TextSpan(
                                      text: ' (Optional)!',
                                      style: TextStyle(fontSize: 14, color: Colors.grey),
                                    ),
                                  ],
                                ),
                              ),
                              trailing: Icon(Icons.keyboard_arrow_down_outlined),
                            ),

                            ///Check boxes
                            ListTile(
                              contentPadding: EdgeInsets.zero,
                              leading: Checkbox(
                                activeColor: AppColors.primaryColor,
                                value: isChecked1,
                                onChanged: (bool? value) {
                                  // Change the type to bool? here
                                  setState(() {
                                    isChecked1 = value ?? false; // Null check and default value assignment
                                  });
                                },
                              ),
                              title: TextWidget(
                                text: 'Headphones',
                              ),
                              trailing: TextWidget(text: '+\$4.12', color: Colors.grey),
                            ),
                            ListTile(
                              contentPadding: EdgeInsets.zero,
                              leading: Checkbox(
                                activeColor: AppColors.primaryColor,
                                value: isChecked2,
                                onChanged: (bool? value) {
                                  // Change the type to bool? here
                                  setState(() {
                                    isChecked2 = value ?? false; // Null check and default value assignment
                                  });
                                },
                              ),
                              title: const TextWidget(
                                text: 'Mouse',
                              ),
                              trailing: TextWidget(text: '+\$4.12', color: Colors.grey),
                            ),
                            ListTile(
                              contentPadding: EdgeInsets.zero,
                              leading: Checkbox(
                                activeColor: AppColors.primaryColor,
                                value: isChecked3,
                                onChanged: (bool? value) {
                                  // Change the type to bool? here
                                  setState(() {
                                    isChecked3 = value ?? false; // Null check and default value assignment
                                  });
                                },
                              ),
                              title: TextWidget(
                                text: 'USB',
                              ),
                              trailing: TextWidget(text: '+\$4.12', color: Colors.grey),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                height: 100,
                width: double.infinity,
                decoration: const BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black12,
                        blurRadius: 20,
                        spreadRadius: 20,
                        offset: Offset(1, 0),
                      )
                    ],
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(30),
                      topLeft: Radius.circular(30),
                    )),
                child: Padding(
                  padding: const EdgeInsets.all(22.0),
                  child: Container(
                      decoration: BoxDecoration(color: AppColors.primaryColor, borderRadius: BorderRadius.circular(8)),
                      child: ListTile(
                        leading: Padding(
                          padding: const EdgeInsets.all(14.0),
                          child: Image.asset('assets/png/buy.png'),
                        ),
                        trailing: const Padding(
                          padding: EdgeInsets.all(14.0),
                          child: TextWidget(
                            text: '\$40',
                            weight: FontWeight.w700,
                            color: Colors.white,
                            fontSize: 17,
                          ),
                        ),
                        title: const TextWidget(
                          text: 'Add to cart',
                          weight: FontWeight.w700,
                          color: Colors.white,
                        ),
                      )),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
