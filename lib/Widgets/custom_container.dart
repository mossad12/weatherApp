import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import '../Them/appColor.dart';

class CustomContainer extends StatelessWidget {
  CustomContainer(
      {Key? key, required this.image, required this.name, required this.desc})
      : super(key: key);
  String image;
  String name;
  String desc;

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Container(
      margin: EdgeInsets.all(7),
      padding: EdgeInsets.all(3),
      width: width * 0.45,
      height: height * 0.15,
      decoration: BoxDecoration(
        border: Border.all(color: AppColors.greyColor, width: 2),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        children: [
          Lottie.asset(
            image,
            height: 60,
            width: 60,
          ),
          SizedBox(
            width: 10,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                desc,
                style: TextStyle(
                  color: AppColors.textColor,
                  fontSize: 22,
                ),
              ),
              Text(
                name,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
