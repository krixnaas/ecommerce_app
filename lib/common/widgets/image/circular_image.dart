import 'package:app/utils/constants/colors.dart';
import 'package:app/utils/constants/sizes.dart';
import 'package:app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class CustomCicularImage extends StatelessWidget {
  const CustomCicularImage({
    super.key,
    this.width = 58,
    this.height = 58,
    this.overlayColor,
    required this.image,
    this.backgroundColor,
    this.fit = BoxFit.cover,
    this.padding = Sizes.sm,
    this.isNetworkImage = false,
  });
  final BoxFit? fit;
  final String image;
  final bool isNetworkImage;
  final Color? overlayColor;
  final Color? backgroundColor;
  final double width, height, padding;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      padding: EdgeInsets.all(padding),
      decoration: BoxDecoration(
          color: backgroundColor ??
              (HelperFunctions.isDarkMode(context)
                  ? AppColors.black
                  : AppColors.white),
          borderRadius: BorderRadius.circular(100)),
      child: Center(
        child: Image(
          fit: fit,
          image: isNetworkImage
              ? NetworkImage(image)
              : AssetImage(image) as ImageProvider,
          color: HelperFunctions.isDarkMode(context)
              ? AppColors.white
              : AppColors.dark,
        ),
      ),
    );
  }
}
