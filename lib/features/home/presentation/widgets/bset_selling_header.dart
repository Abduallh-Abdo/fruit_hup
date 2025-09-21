import 'package:flutter/material.dart';
import 'package:fruit_hup/core/helper/extensions/navigations.dart';

import '../../../../config/routes/app_routes.dart';
import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/app_text_styles.dart';

class BsetSellingHeader extends StatelessWidget {
  const BsetSellingHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Text('الاكثر مبيعاً', style: AppTextStyles.bold16),
        const Spacer(),
        GestureDetector(
          onTap: () {
            context.pushNamed(Routes.bestSellingView);
          },
          child: Text(
            'المزيد',
            style: AppTextStyles.regular13.copyWith(
              color: AppColors.hintTextColor,
            ),
          ),
        ),
      ],
    );
  }
}
