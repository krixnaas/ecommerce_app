import 'package:app/utils/constants/colors.dart';
import 'package:app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class RoundedContainer extends StatelessWidget {
  const RoundedContainer({
    super.key,
    this.child,
    this.width,
    this.height,
    this.margin,
    this.padding,
    this.showBorder = false,
    this.radius = Sizes.cardRadiusLg,
    this.backgroundColor = AppColors.white,
    this.borderColor = AppColors.borderPrimary,
  });

  final Widget? child;
  final double? width;
  final double? height;
  final EdgeInsetsGeometry? margin;
  final EdgeInsetsGeometry? padding;
  final bool showBorder;
  final double radius;
  final Color backgroundColor;
  final Color borderColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      margin: margin,
      padding: padding,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(radius),
        border: showBorder
            ? Border.all(color: borderColor)
            : Border.all(color: AppColors.white),
        color: backgroundColor,
      ),
      child: child,
    );
  }
}
