import 'package:app/common/widgets/success_screen.dart';
import 'package:app/features/authentication/screens/login/login.dart';
import 'package:app/utils/constants/image_strings.dart';
import 'package:app/utils/constants/sizes.dart';
import 'package:app/utils/constants/text_strings.dart';
import 'package:app/utils/helpers/helper_functions.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class VerifyEmailScreen extends StatelessWidget {
  const VerifyEmailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
              onPressed: () => Get.offAll(() => const LoginScreen()),
              icon: const Icon(CupertinoIcons.clear))
        ],
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(Sizes.defaultSpace),
            child: Column(
              children: [
                //Image
                Image(
                  image:
                      const AssetImage(ImageString.deliveredEmailIllustration),
                  width: HelperFunctions.screenWidth() * 0.6,
                ),
                const SizedBox(height: Sizes.spaceBetweenSections),

                //Title & Subtitle
                Text(
                  TextString.confirmEmail,
                  style: Theme.of(context).textTheme.headlineMedium,
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: Sizes.spaceBetweenItems),
                Text(
                  'test@gmail.com',
                  style: Theme.of(context).textTheme.labelLarge,
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: Sizes.spaceBetweenItems),
                Text(
                  TextString.confirmEmailSubTitle,
                  style: Theme.of(context).textTheme.labelLarge,
                  textAlign: TextAlign.center,
                ),
                //Button
                const SizedBox(height: Sizes.spaceBetweenSections),

                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                      onPressed: () => Get.to(() => SuccessScreen(
                            image: ImageString.staticSuccessIllustration,
                            title: TextString.yourAccountCreatedTitle,
                            subTitle: TextString.yourAccountCreatedSubTitle,
                            onPressed: () => Get.to(() => const LoginScreen()),
                          )),
                      child: Text(TextString.tContinue.capitalize!)),
                ),
                const SizedBox(height: Sizes.spaceBetweenItems),
                SizedBox(
                  width: double.infinity,
                  child: TextButton(
                      onPressed: () {},
                      child: Text(TextString.resendEmail.capitalize!)),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
