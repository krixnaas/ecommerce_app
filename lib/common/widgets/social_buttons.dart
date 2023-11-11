
import 'package:app/utils/constants/colors.dart';
import 'package:app/utils/constants/image_strings.dart';
import 'package:app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class SocialButtons extends StatelessWidget {
  const SocialButtons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          decoration: BoxDecoration(border: Border.all(color: AppColors.grey), borderRadius: BorderRadius.circular(100)),
          child: IconButton(
              onPressed: (){},
              icon: const Image(
                  width: Sizes.iconMd,
                  height: Sizes.iconMd,
                  image: AssetImage(ImageString.google)
              )
          ),
        ),
        const SizedBox(height: Sizes.spaceBetweenSections),
        Container(
          decoration: BoxDecoration(border: Border.all(color: AppColors.grey), borderRadius: BorderRadius.circular(100)),
          child: IconButton(
              onPressed: (){},
              icon: const Image(
                  width: Sizes.iconMd,
                  height: Sizes.iconMd,
                  image: AssetImage(ImageString.facebook)
              )
          ),
        ),
      ],
    );
  }
}