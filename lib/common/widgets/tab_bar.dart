import 'package:app/utils/constants/colors.dart';
import 'package:app/utils/device/device_utility.dart';
import 'package:app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class CustomTabBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomTabBar({super.key, required this.tabs});

  final List<Widget> tabs;
  @override
  Widget build(BuildContext context) {
    return Material(
      child: TabBar(
        isScrollable: true,
        indicatorColor: AppColors.primary,
        labelColor: HelperFunctions.isDarkMode(context)
            ? AppColors.white
            : AppColors.primary,
        tabs: tabs,
        unselectedLabelColor: AppColors.darkGrey,
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(DeviceUtils.getAppBarHeight());
}
