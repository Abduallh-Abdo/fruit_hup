import 'package:flutter/material.dart';
import 'package:fruit_hup/core/utils/app_text_styles.dart';

import '../../../../core/utils/app_colors.dart';

class ActiveStepItem extends StatelessWidget {
  const ActiveStepItem({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        CircleAvatar(
          radius: 11.5,
          backgroundColor: AppColors.primaryColor,
          child: Icon(Icons.check, color: Colors.white, size: 16),
        ),
        SizedBox(width: 4),
        Text('الشحن', style: AppTextStyles.bold13),
      ],
    );
  }
}
