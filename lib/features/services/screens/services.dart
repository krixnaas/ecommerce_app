import 'package:app/common/widgets/app_bar.dart';
import 'package:app/common/widgets/counter_icon.dart';
import 'package:app/common/widgets/custom_brand_title.dart';
import 'package:app/common/widgets/custom_grid_layout.dart';
import 'package:app/common/widgets/image/circular_image.dart';
import 'package:app/common/widgets/rounded_container.dart';
import 'package:app/utils/constants/colors.dart';
import 'package:app/utils/constants/enums.dart';
import 'package:app/utils/constants/image_strings.dart';
import 'package:app/utils/constants/sizes.dart';
import 'package:app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class ServiceScreen extends StatelessWidget {
  const ServiceScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: Text(
          'Services',
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        showBackArrow: false,
        actions: [CounterIcon(onPressed: () {})],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(Sizes.lg),
          child: Column(
            children: [
              CustomGridLayout(
                  itemCount: 16,
                  mainAxisExtent: 80,
                  itemBuilder: (_, index) {
                    return GestureDetector(
                      onTap: () {},
                      child: RoundedContainer(
                        padding: const EdgeInsets.all(Sizes.sm),
                        showBorder: true,
                        backgroundColor: Colors.transparent,
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Flexible(
                              child: CustomCicularImage(
                                isNetworkImage: false,
                                image: ImageString.clothIcon,
                                overlayColor:
                                    HelperFunctions.isDarkMode(context)
                                        ? AppColors.white
                                        : AppColors.black,
                              ),
                            ),
                            const CustomBrandTitleVerifiedIcon(
                              title: 'Driving School',
                              brandTextSizes: TextSizes.medium,
                            ),
                          ],
                        ),
                      ),
                    );
                  }),

              //CustomGridLayout(itemCount: 10, itemBuilder: (context, index) => )
            ],
          ),
        ),
      ),
    );
  }
}
