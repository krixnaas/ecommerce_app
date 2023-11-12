import 'package:app/features/authentication/screens/signup/verify_email.dart';
import 'package:app/utils/constants/sizes.dart';
import 'package:app/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import 'terms_and_condition.dart';

class SignupForm extends StatelessWidget {
  const SignupForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: TextFormField(
                  expands: false,
                  decoration: const InputDecoration(
                    labelText: TextString.firstName,
                    prefixIcon: Icon(Iconsax.user),
                  ),
                ),
              ),
              const SizedBox(
                width: Sizes.spaceBetweenInputFields,
              ),
              Expanded(
                child: TextFormField(
                  expands: false,
                  decoration: const InputDecoration(
                    labelText: TextString.firstName,
                    prefixIcon: Icon(Iconsax.user),
                  ),
                ),
              ),
            ],
          ),

          //Username
          const SizedBox(
            height: Sizes.spaceBetweenInputFields,
          ),
          TextFormField(
            decoration: const InputDecoration(
              labelText: TextString.username,
              prefixIcon: Icon(Iconsax.user_edit),
            ),
          ),

          //Email
          const SizedBox(
            height: Sizes.spaceBetweenInputFields,
          ),
          TextFormField(
            decoration: const InputDecoration(
              labelText: TextString.email,
              prefixIcon: Icon(Iconsax.direct),
            ),
          ),

          //phone
          const SizedBox(
            height: Sizes.spaceBetweenInputFields,
          ),
          TextFormField(
            decoration: const InputDecoration(
              labelText: TextString.phoneNo,
              prefixIcon: Icon(Iconsax.call),
            ),
          ),

          //password
          const SizedBox(
            height: Sizes.spaceBetweenInputFields,
          ),
          TextFormField(
            decoration: const InputDecoration(
              prefixIcon: Icon(Iconsax.password_check),
              labelText: TextString.password,
              suffixIcon: Icon(Iconsax.eye_slash),
            ),
          ),

          //Terms and Conditions
          const SizedBox(height: Sizes.spaceBetweenSections),
          const TermsAndConditions(),

          //Signup  Button
          const SizedBox(height: Sizes.spaceBetweenItems),

          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
                onPressed: () => Get.to(() => const VerifyEmailScreen()),
                child: Text(TextString.signupTitle.capitalize!)),
          ),
          const SizedBox(height: Sizes.spaceBetweenItems),
        ],
      ),
    );
  }
}
