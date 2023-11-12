import 'package:app/utils/constants/image_strings.dart';
import 'package:flutter/material.dart';
import 'widgets/promo_slider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: const [
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
    );
  }
}
