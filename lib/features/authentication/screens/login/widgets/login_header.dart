
import 'package:app/utils/constants/image_strings.dart';
import 'package:app/utils/constants/sizes.dart';
import 'package:app/utils/constants/text_strings.dart';
import 'package:app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class LoginHeader extends StatelessWidget {
  const LoginHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final isDarkMode = HelperFunctions.isDarkMode(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image(
          height: 150,
          image: AssetImage(
            isDarkMode
                ? ImageString.lightAppLogo
                : ImageString.darkAppLogo,
          ),
        ),
        Text(
          TextString.loginTitle,
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        const SizedBox(height: Sizes.sm),
        Text(
          TextString.loginSubTitle,
          style: Theme.of(context).textTheme.bodyMedium,
        ),
      ],
    );
  }
}
