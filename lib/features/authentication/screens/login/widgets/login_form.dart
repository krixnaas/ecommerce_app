
import 'package:app/utils/constants/sizes.dart';
import 'package:app/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: Sizes.spaceBetweenSections),
        child: Column(
          children: [
            TextFormField(
              decoration: const InputDecoration(
                  prefixIcon: Icon(Iconsax.direct_right),
                  labelText: TextString.email),
            ),
            const SizedBox(height: Sizes.spaceBetweenInputFields),
            TextFormField(
              decoration: const InputDecoration(
                prefixIcon: Icon(Iconsax.password_check),
                labelText: TextString.password,
                suffixIcon: Icon(Iconsax.eye_slash),
              ),
            ),
            const SizedBox(height: Sizes.spaceBetweenInputFields / 2),

            //Remember Me and Forget Password
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                //Remember Me
                Row(
                  children: [
                    Checkbox(
                      value: true,
                      onChanged: (value) {},
                    ),
                    const Text(TextString.rememberMe),
                  ],
                ),
                //Forgot Password
                TextButton(
                  onPressed: () {},
                  child: const Text(TextString.forgetPassword),
                )
              ],
            ),
            const SizedBox(height: Sizes.spaceBetweenSections),
            //SignIn Button
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                  onPressed: () {},
                  child: const Text(TextString.signIn)),
            ),
            const SizedBox(height: Sizes.spaceBetweenItems),
            //Create New Account
            SizedBox(
              width: double.infinity,
              child: OutlinedButton(
                  onPressed: () {},
                  child: const Text(TextString.signupTitle)),
            ),
            const SizedBox(height: Sizes.spaceBetweenItems),
          ],
        ),
      ),
    );
  }
}