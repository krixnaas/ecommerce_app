import 'package:app/common/styles/spacing_styles.dart';
import 'package:app/common/widgets/form_divider.dart';
import 'package:app/common/widgets/social_buttons.dart';
import 'package:app/utils/constants/sizes.dart';
import 'package:app/utils/constants/text_strings.dart';
import 'package:app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'widgets/login_form.dart';
import 'widgets/login_header.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final isDarkMode = HelperFunctions.isDarkMode(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: AppSpacingStyle.paddingWithAppBarHeight,
          child: Column(
            children: [
              //Logo Title & Sub-Title
              const LoginHeader(),

              //Login Form
              const LoginForm(),

              //Divider
              FormDivider(dividerText: TextString.orSignInWith.capitalize!),

              //Footer
              const SizedBox(height: Sizes.spaceBetweenItems),
              const SocialButtons()
            ],
          ),
        ),
      ),
    );
  }
}



