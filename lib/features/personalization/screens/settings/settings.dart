import 'package:app/common/widgets/app_bar.dart';
import 'package:app/common/widgets/list_tiles/settings_menu_tile.dart';
import 'package:app/common/widgets/primary_header_container.dart';
import 'package:app/common/widgets/section_heading.dart';
import 'package:app/features/personalization/screens/profile/profile.dart';
import 'package:app/utils/constants/colors.dart';
import 'package:app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import 'widgets/user_profile.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            //Header
            PrimaryHeaderContainer(
              child: Column(
                children: [
                  CustomAppBar(
                    title: Text(
                      'Settings',
                      style: Theme.of(context)
                          .textTheme
                          .headlineMedium!
                          .apply(color: AppColors.white),
                    ),
                  ),

                  //User Profile Card
                  UserProfile(
                      onPressed: () => Get.to(() => const ProfileScreen())),
                  const SizedBox(height: Sizes.spaceBetweenSections),
                ],
              ),
            ),

            //Body
            Padding(
              padding: const EdgeInsets.all(Sizes.defaultSpace),
              child: Column(
                children: [
                  //Title
                  const SectionHeading(
                    title: 'Account Settings',
                    showActionButton: false,
                  ),
                  const SizedBox(
                    height: Sizes.spaceBetweenItems,
                  ),
                  SettingMenuTile(
                    title: 'My Address',
                    subTitle: 'Set shopping delivery address',
                    icon: Iconsax.safe_home,
                    onTap: () {},
                  ),
                  SettingMenuTile(
                    title: 'My Cart',
                    subTitle: 'Add, remove products and move to checkout',
                    icon: Iconsax.shopping_cart,
                    onTap: () {},
                  ),
                  SettingMenuTile(
                    title: 'My Orders',
                    subTitle: 'In Progress and Completed Orders',
                    icon: Iconsax.bag_tick,
                    onTap: () {},
                  ),
                  SettingMenuTile(
                    title: 'Back Account',
                    subTitle: 'In Progress and Completed Orders',
                    icon: Iconsax.bank,
                    onTap: () {},
                  ),
                  SettingMenuTile(
                    title: 'My Coupons',
                    subTitle: 'List of all the discounted coupons',
                    icon: Iconsax.discount_shape,
                    onTap: () {},
                  ),
                  SettingMenuTile(
                    title: 'Notifications',
                    subTitle: 'Set any kind of notifications message',
                    icon: Iconsax.notification,
                    onTap: () {},
                  ),
                  SettingMenuTile(
                    title: 'Account Privacy',
                    subTitle: 'Manage data usage and connectivity',
                    icon: Iconsax.security_card,
                    onTap: () {},
                  ),

                  //App Settings
                  const SizedBox(height: Sizes.spaceBetweenItems),
                  const SectionHeading(
                      title: 'App Settings', showActionButton: false),
                  const SizedBox(
                    height: Sizes.spaceBetweenItems,
                  ),
                  SettingMenuTile(
                    title: 'Load Data',
                    subTitle: 'Upload Data to your Could Firebase',
                    icon: Iconsax.document_upload,
                    trailing: Switch(
                      value: true,
                      onChanged: (value) {},
                    ),
                  ),
                  SettingMenuTile(
                    title: 'Geolocation',
                    subTitle: 'Set recommendation based on location',
                    icon: Iconsax.location,
                    trailing: Switch(
                      value: true,
                      onChanged: (value) {},
                    ),
                  ),
                  SettingMenuTile(
                    title: 'Safe Mode',
                    subTitle: 'Search Result is safe for all pages',
                    icon: Iconsax.security_user,
                    trailing: Switch(
                      value: false,
                      onChanged: (value) {},
                    ),
                  ),
                  SettingMenuTile(
                      title: 'HD Image Quality',
                      subTitle: 'Set image quality to be seen',
                      icon: Iconsax.image,
                      trailing: Switch(value: true, onChanged: (value) {})),

                  //Logout Button
                  const SizedBox(height: Sizes.spaceBetweenSections),
                  SizedBox(
                      width: double.infinity,
                      child: OutlinedButton(
                          onPressed: () {}, child: const Text('Logout'))),
                  const SizedBox(height: Sizes.spaceBetweenSections * 2.5),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
