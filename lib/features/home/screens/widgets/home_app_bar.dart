import 'package:app/common/widgets/app_bar.dart';
import 'package:app/common/widgets/counter_icon.dart';
import 'package:app/utils/constants/colors.dart';
import 'package:app/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CustomAppBar(
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            TextString.homeAppbarTitle,
            style: Theme.of(context)
                .textTheme
                .labelMedium!
                .apply(color: AppColors.grey),
          ),
          Text(
            TextString.homeAppbarSubTitle,
            style: Theme.of(context)
                .textTheme
                .headlineSmall!
                .apply(color: AppColors.black),
          )
        ],
      ),
      actions: [
        CounterIcon(
          onPressed: () {},
          iconColor: AppColors.black,
        ),
      ],
    );
  }
}
