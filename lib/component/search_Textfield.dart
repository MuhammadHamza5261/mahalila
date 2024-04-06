import 'package:flutter/material.dart';

import '../utils/styles.dart';
import 'filter_Screen.dart';

class SearchTextField extends StatelessWidget {
  final TextEditingController controller;
  final IconData? prefixIcon;
  final String hints;
  final VoidCallback? onTap;
  const SearchTextField({
    super.key,
    required this.controller,
    this.prefixIcon,
    required this.hints,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: TextFormField(
        controller: controller,
        style: const TextStyle(fontWeight: FontWeight.w400, fontSize: 15),
        decoration: InputDecoration(
          contentPadding: const EdgeInsets.only(left: 0),
          hintText: hints,
          filled: true,
          fillColor: AppColors.greyBgColor2,
          hintStyle: const TextStyle(fontWeight: FontWeight.w400, fontSize: 15),
          prefixIcon: Padding(padding: const EdgeInsets.all(8.0), child: Image.asset('assets/png/search.png')),
          suffixIcon: InkWell(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => RaffleFilterScreen()));
            },
            child: Container(
              width: 50,
              height: 50,
              decoration: BoxDecoration(
                  color: AppColors.primaryColor,
                  borderRadius: const BorderRadius.only(
                    topRight: Radius.circular(10),
                    bottomRight: Radius.circular(10),
                  )),
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Image.asset('assets/png/filter.png'),
              ),
            ),
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(color: AppColors.btnBorderColor),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(color: AppColors.primaryColor),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(color: AppColors.btnBorderColor),
          ),
        ),
      ),
    );
  }
}
