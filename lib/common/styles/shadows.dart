import 'package:app/utils/constants/colors.dart';
import 'package:flutter/widgets.dart';

class ShadowStyle {
  static final verticalShadow = BoxShadow(
    color: AppColors.darkGrey.withOpacity(0.1),
    blurRadius: 50,
    spreadRadius: 7,
    offset: const Offset(0, 2),
  );

  static final horizontalShadow = BoxShadow(
    color: AppColors.darkGrey.withOpacity(0.1),
    blurRadius: 50,
    spreadRadius: 7,
    offset: const Offset(0, 2),
  );
}
