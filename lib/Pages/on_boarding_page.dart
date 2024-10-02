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
      bodyPadding: const EdgeInsets.only(top: 120),
      dotsDecorator: DotsDecorator(
        size: const Size.square(10.0),
        activeSize: const Size(15.0, 10.0),
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
              child: Lottie.asset('assets/images/img1.json',
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
              child: Lottie.asset('assets/images/img4.json',
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
              child: Lottie.asset('assets/images/img3.json',
                  height: 500, width: 500)),
        ),
      ],
      onDone: () {
        // When done button is press
        Get.to(const HomePage(),
            transition: Transition.rightToLeftWithFade,
            duration: const Duration(seconds: 1));
      },
      onSkip: () {
        // You can also skip
        Get.to(const HomePage(),
            transition: Transition.fadeIn,
            duration: const Duration(seconds: 1));
      },
      showSkipButton: true,
      autoScrollDuration: 3000,
      skip: const Text("Skip",
          style: TextStyle(
              fontWeight: FontWeight.w600,
              color: AppColors.textColor,
              fontSize: 20)),
      next: const Icon(Icons.arrow_forward, color: AppColors.textColor),
      done: const Text("Done",
          style: TextStyle(
              fontWeight: FontWeight.w600,
              color: AppColors.textColor,
              fontSize: 20)),
    );
  }
}
