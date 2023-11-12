import 'package:app/common/widgets/form_divider.dart';
import 'package:app/common/widgets/social_buttons.dart';
import 'package:app/utils/constants/sizes.dart';
import 'package:app/utils/constants/text_strings.dart';
import 'package:app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'widgets/signup_form.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(Sizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //Logo Title & Sub-Title
              Text(
                TextString.signupTitle,
                style: Theme.of(context).textTheme.headlineMedium,
              ),

              const SizedBox(height: Sizes.spaceBetweenSections),
              //Signup Form
              const SignupForm(),

              //Divider
              FormDivider(dividerText: TextString.orSignUpWith.capitalize!),

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
