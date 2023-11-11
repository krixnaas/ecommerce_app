import 'package:app/features/authentication/controllers/onboarding/onboarding_controller.dart';
import 'package:app/features/authentication/screens/onboarding/widgets/onboarding_dot_navigation.dart';
import 'package:app/features/authentication/screens/onboarding/widgets/onboarding_next_button.dart';
import 'package:app/features/authentication/screens/onboarding/widgets/onboarding_page.dart';
import 'package:app/features/authentication/screens/onboarding/widgets/onboarding_skip.dart';
import 'package:app/utils/constants/image_strings.dart';
import 'package:app/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(OnBoardingController());
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: controller.pageController,
            onPageChanged: controller.updatePageIndicator,
            children: const [
              OnBoardingPage(
                image: ImageString.onBoardingImage1,
                title: TextString.onBoardingTitle1,
                subTitle: TextString.onBoardingSubTitle1,
              ),
              OnBoardingPage(
                image: ImageString.onBoardingImage2,
                title: TextString.onBoardingTitle2,
                subTitle: TextString.onBoardingSubTitle2,
              ),
              OnBoardingPage(
                image: ImageString.onBoardingImage3,
                title: TextString.onBoardingTitle3,
                subTitle: TextString.onBoardingSubTitle3,
              ),
            ],
          ),
          //Skip Button
          const OnBoardingSkip(),
          //Dot Navigation SmoothPageIndicator
          const OnBoardingDotNaviation(),
          //Circular Button
          const OnBoardingNextButton(),
        ],
      ),
    );
  }
}
