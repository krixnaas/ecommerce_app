import 'package:app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class AppSpacingStyle {
  static const EdgeInsetsGeometry paddingWithAppBarHeight = EdgeInsets.only(
    top: Sizes.appBarHeight,
    left: Sizes.defaultSpace,
    bottom: Sizes.defaultSpace,
    right: Sizes.defaultSpace,
  );
}
