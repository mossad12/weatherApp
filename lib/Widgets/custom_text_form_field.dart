import 'package:flutter/material.dart';

import '../Them/appColor.dart';

class CustomTextFormField extends StatelessWidget {
  CustomTextFormField({Key? key, required this.controller}) : super(key: key);

  TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 25),
      child: TextFormField(
        controller: controller,
        cursorColor: AppColors.textColor,
        style: TextStyle(color: AppColors.textColor),
        decoration: InputDecoration(
          filled: true,
          fillColor: Colors.transparent,
          hintTextDirection: TextDirection.ltr,
          border: OutlineInputBorder(
            borderSide: BorderSide(
              color: AppColors.textColor,
            ),
            borderRadius: BorderRadius.circular(25),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: AppColors.greyColor),
            borderRadius: BorderRadius.circular(25),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: AppColors.textColor),
            borderRadius: BorderRadius.circular(25),
          ),
          hintText: "Search ...",
          hintStyle: TextStyle(fontSize: 16, color: AppColors.textColor),
          prefixIcon: Icon(
            Icons.search,
            color: AppColors.textColor,
          ),
        ),
      ),
    );
  }
}
