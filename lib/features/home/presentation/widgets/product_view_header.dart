import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fruit_hup/core/utils/assets_manager.dart';

import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/app_text_styles.dart';

class ProductViewHeader extends StatelessWidget {
  const ProductViewHeader({super.key, required this.productLength});
  final int productLength;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text('$productLength النتائج', style: AppTextStyles.bold16),
        const Spacer(),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          decoration: ShapeDecoration(
            color: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(4),
              side: const BorderSide(
                color: AppColors.borderSideColor,
                width: 1,
              ),
            ),
          ),
          child: SvgPicture.asset(Assets.imagesSortby),
        ),
      ],
    );
  }
}
