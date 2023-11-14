import 'package:app/common/widgets/app_bar.dart';
import 'package:app/common/widgets/image/circular_image.dart';
import 'package:app/common/widgets/section_heading.dart';
import 'package:app/utils/constants/image_strings.dart';
import 'package:app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import 'widgets/profile_menu.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
        title: Text('Profile'),
        showBackArrow: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(Sizes.defaultSpace),
          child: Column(
            children: [
              SizedBox(
                width: double.infinity,
                child: Column(
                  children: [
                    const CustomCicularImage(image: ImageString.user),
                    TextButton(
                      onPressed: () {},
                      child: const Text('Change Profile Picture'),
                    ),
                  ],
                ),
              ),

              //Details
              const SizedBox(
                height: Sizes.spaceBetweenItems / 2,
              ),
              const Divider(),
              const SizedBox(
                height: Sizes.spaceBetweenItems,
              ),
              const SectionHeading(
                title: 'Profile Information',
                showActionButton: false,
              ),
              const SizedBox(
                height: Sizes.spaceBetweenItems,
              ),
              ProfileMenu(
                onPressed: () {},
                title: 'Name',
                value: 'Coding with Me',
              ),
              ProfileMenu(
                onPressed: () {},
                title: 'Username',
                value: 'Test',
              ),

              const SizedBox(
                height: Sizes.spaceBetweenItems,
              ),
              const Divider(),
              const SizedBox(
                height: Sizes.spaceBetweenItems,
              ),

              //Heading Personal Info
              const SectionHeading(
                title: 'Profile Information',
                showActionButton: false,
              ),
              const SizedBox(
                height: Sizes.spaceBetweenItems,
              ),
              ProfileMenu(
                onPressed: () {},
                title: 'User ID',
                value: '45689',
                icon: Iconsax.copy,
              ),
              ProfileMenu(
                onPressed: () {},
                title: 'Email',
                value: 'test@gmail.com',
              ),
              ProfileMenu(
                onPressed: () {},
                title: 'Phone Nuber',
                value: '+61 450 102 131',
              ),
              ProfileMenu(
                onPressed: () {},
                title: 'Gender',
                value: 'Male',
              ),
              ProfileMenu(
                onPressed: () {},
                title: 'Date of Birth',
                value: '10 Oct, 1994',
              ),
              const Divider(),
              const SizedBox(
                height: Sizes.spaceBetweenItems,
              ),
              Center(
                child: TextButton(
                  onPressed: () {},
                  child: const Text(
                    'Close Account',
                    style: TextStyle(color: Colors.red),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
