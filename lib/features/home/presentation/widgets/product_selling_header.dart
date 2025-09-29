import 'package:flutter/material.dart';

import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/app_text_styles.dart';

class ProductSellingHeader extends StatelessWidget {
  const ProductSellingHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Text('4 النتائج', style: AppTextStyles.bold16),
        const Spacer(),
        Container(
          decoration: BoxDecoration(
            border: Border.all(color: AppColors.borderSideColor),
          ),
        ),
      ],
    );
  }
}
