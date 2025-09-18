import 'package:flutter/material.dart';
import 'package:fruit_hup/core/utils/app_colors.dart';

import '../../../../core/utils/app_text_styles.dart';

class FeaturedItemButton extends StatelessWidget {
  const FeaturedItemButton({super.key, required this.onPressed});
  final void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 32,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.white,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
        ),
        onPressed: onPressed,
        child: Text(
          'تسوق الان',
          style: AppTextStyles.bold13.copyWith(color: AppColors.primaryColor),
        ),
      ),
    );
  }
}
