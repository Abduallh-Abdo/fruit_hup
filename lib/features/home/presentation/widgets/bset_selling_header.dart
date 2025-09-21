import 'package:flutter/material.dart';

import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/app_text_styles.dart';

class BsetSellingHeader extends StatelessWidget {
  const BsetSellingHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Text(
          'الاكثر مبيعاً',
          style: AppTextStyles.bold16,
        ),
        const Spacer(),
        Text('المزيد', style: AppTextStyles.regular13.copyWith(color: AppColors.hintTextColor)),
      ],
    );
  }
}
