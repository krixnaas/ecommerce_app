import 'package:app/common/widgets/circular_container.dart';
import 'package:app/common/widgets/curved_edges_widget.dart';
import 'package:app/utils/constants/colors.dart';
import 'package:flutter/material.dart';

class PrimaryHeaderContainer extends StatelessWidget {
  const PrimaryHeaderContainer({super.key, required this.child});

  final Widget child;
  @override
  Widget build(BuildContext context) {
    return CurvedEdgesWidget(
        child: Container(
      color: AppColors.primary,
      child: Stack(
        children: [
          Positioned(
            top: -150,
            right: -250,
            child: CircularContainer(
              backgroundColor: AppColors.textWihte.withOpacity(0.1),
            ),
          ),
          Positioned(
            top: 100,
            right: -300,
            child: CircularContainer(
              backgroundColor: AppColors.textWihte.withOpacity(0.1),
            ),
          ),
          child
        ],
      ),
    ));
  }
}
