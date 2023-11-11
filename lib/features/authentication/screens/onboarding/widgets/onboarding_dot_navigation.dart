import 'package:app/features/authentication/controllers/onboarding/onboarding_controller.dart';
import 'package:app/utils/constants/colors.dart';
import 'package:app/utils/constants/sizes.dart';
import 'package:app/utils/device/device_utility.dart';
import 'package:app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingDotNaviation extends StatelessWidget {
  const OnBoardingDotNaviation({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = OnBoardingController.instance;
    final isDarkMode = HelperFunctions.isDarkMode(context);
    return Positioned(
      bottom: DeviceUtils.getBottomNavigationBarHeight() + 25,
      left: Sizes.defaultSpace,
      child: SmoothPageIndicator(
        controller: controller.pageController,
        count: 3,
        onDotClicked: controller.dotNaviationClick,
        effect: ExpandingDotsEffect(
            activeDotColor: isDarkMode ? AppColors.light : AppColors.dark,
            dotHeight: 6),
      ),
    );
  }
}
