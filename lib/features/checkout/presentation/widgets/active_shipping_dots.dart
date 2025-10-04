import 'package:flutter/material.dart';

import '../../../../core/utils/app_colors.dart';

class ActiveShippingDots extends StatelessWidget {
  const ActiveShippingDots({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 18,
      height: 18,
      decoration: const ShapeDecoration(
        color: AppColors.primaryColor,
        shape: OvalBorder(side: BorderSide(width: 4, color: Colors.white)),
      ),
    );
  }
}
