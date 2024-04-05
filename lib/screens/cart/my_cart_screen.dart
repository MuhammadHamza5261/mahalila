import 'package:flutter/material.dart';
import 'package:mahalila/component/customText.dart';

import '../../component/bottomSheet.dart';

class MyCartScreen extends StatefulWidget {
  const MyCartScreen({super.key});

  @override
  State<MyCartScreen> createState() => _MyCartScreenState();
}

class _MyCartScreenState extends State<MyCartScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            showModalBottomSheet(
              context: context,
              builder: (context) {
                return CustomModalBottomSheet();
              },
            );
          },
          child: TextWidget(
            text: 'Check out',
          ),
        ),
      ),
    );
  }
}
