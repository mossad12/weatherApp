import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:lottie/lottie.dart';
import 'package:weatherapp/Pages/home_page.dart';
import 'package:weatherapp/Them/appColor.dart';

class OnBoardingPage extends StatefulWidget {
  const OnBoardingPage({super.key});

  @override
  State<OnBoardingPage> createState() => _OnBoardingPageState();
}

class _OnBoardingPageState extends State<OnBoardingPage> {
  @override
  Widget build(BuildContext context) {
    return IntroductionScreen(
      globalBackgroundColor: AppColors.primaryColor,
      bodyPadding: const EdgeInsets.only(top: 120.0),
      dotsDecorator: DotsDecorator(
        spacing: const EdgeInsets.only(bottom: 30.0, left: 5.0, right: 5.0),
        size: const Size.square(10.0),
        activeSize: const Size(20.0, 8.0),
        color: AppColors.greyColor,
        activeColor: AppColors.textColor,
        activeShape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(25.0),
        ),
      ),
      pages: [
        PageViewModel(
          decoration: const PageDecoration(
            titleTextStyle: TextStyle(
                fontSize: 25,
                color: AppColors.textColor,
                fontWeight: FontWeight.bold),
            bodyTextStyle: TextStyle(fontSize: 18, color: AppColors.textColor),
          ),
          title: "Welcome to WeatherApp",
          body: "Get real-time weather updates at your fingertips.",
          image: Center(
              child: Lottie.asset('assets/images/clear.json',
                  height: 500, width: 500)),
        ),
        PageViewModel(
          decoration: const PageDecoration(
            titleTextStyle: TextStyle(
                fontSize: 25,
                color: AppColors.textColor,
                fontWeight: FontWeight.bold),
            bodyTextStyle: TextStyle(fontSize: 18, color: AppColors.textColor),
          ),
          title: "Search by Location",
          body: "Use the search bar to find weather updates for any city.",
          image: Center(
              child: Lottie.asset('assets/images/heavyrain.json',
                  height: 500, width: 500)),
        ),
        PageViewModel(
          decoration: const PageDecoration(
            titleTextStyle: TextStyle(
                fontSize: 25,
                color: AppColors.textColor,
                fontWeight: FontWeight.bold),
            bodyTextStyle: TextStyle(fontSize: 18, color: AppColors.textColor),
          ),
          title: "Current Location",
          body:
              "Allow location access to get the weather for your current location.",
          image: Center(
              child: Lottie.asset('assets/images/rain.json',
                  height: 500, width: 500)),
        ),
      ],
      onDone: () {
        // When done button is press
        Get.to(HomePage(),
            transition: Transition.rightToLeftWithFade,
            duration: const Duration(seconds: 1));
      },
      onSkip: () {
        // You can also skip
        Get.to(HomePage(),
            transition: Transition.fadeIn,
            duration: const Duration(seconds: 1));
      },
      showSkipButton: true,
      autoScrollDuration: 3000,
      skip: Padding(
        padding: const EdgeInsets.only(bottom: 30),
        child: const Text("Skip",
            style: TextStyle(
                fontWeight: FontWeight.w600,
                color: AppColors.textColor,
                fontSize: 20)),
      ),
      next: Padding(
        padding: const EdgeInsets.only(bottom: 30),
        child: const Icon(Icons.arrow_forward, color: AppColors.textColor),
      ),
      done: Padding(
        padding: const EdgeInsets.only(bottom: 30),
        child: const Text("Done",
            style: TextStyle(
                fontWeight: FontWeight.w600,
                color: AppColors.textColor,
                fontSize: 20)),
      ),
    );
  }
}
