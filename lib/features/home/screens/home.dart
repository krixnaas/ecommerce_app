import 'package:app/common/widgets/app_bar.dart';
import 'package:app/common/widgets/counter_icon.dart';
import 'package:app/common/widgets/tab_bar.dart';
import 'package:app/utils/constants/colors.dart';
import 'package:app/utils/constants/image_strings.dart';
import 'package:app/utils/constants/sizes.dart';
import 'package:app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'widgets/promo_slider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: CustomAppBar(
          title: Text(
            'Home',
            style: Theme.of(context).textTheme.headlineMedium,
          ),
          showBackArrow: false,
          actions: [CounterIcon(onPressed: () {})],
        ),
        body: NestedScrollView(
          headerSliverBuilder: (_, innerBoxIsScrolled) {
            return [
              SliverAppBar(
                automaticallyImplyLeading: false,
                pinned: true,
                floating: true,
                backgroundColor: HelperFunctions.isDarkMode(context)
                    ? AppColors.dark
                    : AppColors.light,
                expandedHeight: 330,
                flexibleSpace: Padding(
                  padding: const EdgeInsets.all(0),
                  child: ListView(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    children: const [
                      SizedBox(
                        height: Sizes.spaceBetweenItems,
                      ),
                      //Carousel
                      PromoSlider(
                        banners: [
                          ImageString.promoBanner1,
                          ImageString.promoBanner2,
                          ImageString.promoBanner3,
                        ],
                      ),
                    ],
                  ),
                ),
                //Tabs
                bottom: const CustomTabBar(
                  tabs: [
                    Tab(child: Text('Rooms')),
                    Tab(child: Text('Jobs')),
                    Tab(child: Text('Report Hub')),
                    Tab(child: Text('Lost & Found')),
                    Tab(child: Text('Patro')),
                  ],
                ),
              ),
            ];
          },
          body: TabBarView(
            children: [
              Padding(
                padding: const EdgeInsets.all(Sizes.defaultSpace),
                child: Column(
                  children: const [
                    Tab(child: Text('Rooms')),
                    //Rooms
                    //Jobs
                    //Lost & Found
                    //Patro
                    //Report Hub
                  ],
                ),
              )
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            // Handle FAB tap event
          },
          backgroundColor: Colors.blue, // Customize FAB color
          shape: RoundedRectangleBorder(
            borderRadius:
                BorderRadius.circular(30.0), // Set desired circularity
          ),
        ),
      ),
    );
  }
}
