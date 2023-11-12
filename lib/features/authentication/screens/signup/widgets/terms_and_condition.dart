import 'package:app/utils/constants/colors.dart';
import 'package:app/utils/constants/text_strings.dart';
import 'package:app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class TermsAndConditions extends StatelessWidget {
  const TermsAndConditions({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final isDarkMode = HelperFunctions.isDarkMode(context);
    return Row(
      children: [
        SizedBox(
          width: 24,
          height: 24,
          child: Checkbox(
            value: true,
            onChanged: (value) {},
          ),
        ),
        Text.rich(TextSpan(children: [
          TextSpan(
              text: ' ${TextString.iAgreeTo} ',
              style: Theme.of(context).textTheme.bodySmall),
          TextSpan(
            text: TextString.privacyPolicy,
            style: Theme.of(context).textTheme.bodyMedium!.apply(
                  color: isDarkMode ? AppColors.white : AppColors.primary,
                  decoration: TextDecoration.underline,
                  decorationColor:
                      isDarkMode ? AppColors.white : AppColors.primary,
                ),
          ),
          TextSpan(
              text: ' ${TextString.and} ',
              style: Theme.of(context).textTheme.bodySmall),
          TextSpan(
            text: TextString.termsOfUse,
            style: Theme.of(context).textTheme.bodyMedium!.apply(
                  color: isDarkMode ? AppColors.white : AppColors.primary,
                  decoration: TextDecoration.underline,
                  decorationColor:
                      isDarkMode ? AppColors.white : AppColors.primary,
                ),
          ),
        ])),
      ],
    );
  }
}
