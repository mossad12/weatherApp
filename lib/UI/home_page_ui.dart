import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:weatherapp/Them/appColor.dart';
import 'package:weatherapp/Widgets/custom_container.dart';
import 'package:weatherapp/Widgets/customrow.dart';

import '../Widgets/custom_text_form_field.dart';

class HomePageUi extends StatelessWidget {
  HomePageUi(
      {Key? key,
      required this.controller,
      required this.main,
      required this.temp,
      required this.city,
      required this.onPressed,
      required this.image,
      required this.rain,
      required this.wind,
      required this.max,
      required this.cloud})
      : super(key: key);
  TextEditingController controller;

  String city;

  String temp;

  String rain;
  String wind;
  String cloud;
  String main;

  String max;
  String image;

  Function() onPressed;

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
        backgroundColor: Colors.transparent,
        body: Stack(
          children: [
            Image.asset(
              "assets/images/Bg.jpg",
              height: double.infinity,
              width: double.infinity,
              fit: BoxFit.fill,
            ),
            Container(
              color: Colors.black.withOpacity(0.6),
            ),
            SingleChildScrollView(
              child: Column(children: [
                Container(
                  height: height * 0.6,
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(
                          height: 10,
                        ),
                        CustomTextFormField(
                          controller: controller,
                        ),
                        Container(
                          padding: EdgeInsets.all(5),
                          decoration: BoxDecoration(
                            color: Colors.black.withOpacity(0.5),
                            borderRadius: BorderRadius.circular(30),
                            border: Border.all(
                                color: AppColors.textColor, width: 1.5),
                          ),
                          child: IconButton(
                              onPressed: onPressed,
                              icon: Icon(
                                Icons.search,
                                color: AppColors.textColor,
                              )),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.location_city,
                              color: Colors.white,
                              size: 40,
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Text(
                              city,
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 40,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        Lottie.asset(image, height: 230, width: 300),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text(
                              "$temp °C",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 40,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              main,
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 40,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                Container(
                  height: height * 0.4,
                  decoration: BoxDecoration(
                    color: Colors.black.withOpacity(0.7),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40),
                      topRight: Radius.circular(40),
                    ),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Customrow(
                        image1: "assets/images/wind.json",
                        image2: "assets/images/rain.json",
                        desc1: "$wind km/h",
                        desc2: "$rain %",
                        name1: "Wind",
                        name2: "humidity",
                      ),
                      Customrow(
                        image1: "assets/images/cloudy.json",
                        image2: "assets/images/hot.json",
                        desc1: "$cloud %",
                        desc2: "$max °C",
                        name1: "Cloud",
                        name2: "Max Temp",
                      )
                    ],
                  ),
                ),
              ]),
            ),
          ],
        ));
  }
}
