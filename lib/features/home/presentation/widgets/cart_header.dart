import 'package:flutter/material.dart';

import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/app_text_styles.dart';

class CartHeader extends StatelessWidget {
  const CartHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(vertical: 16),
      decoration: const BoxDecoration(color: Color(0xffebf9f1)),
      child: Center(
        child: Text(
          'لديك 3 منتجات في سله التسوق',
          style: AppTextStyles.regular13.copyWith(
            color: AppColors.primaryColor,
          ),
        ),
      ),
    );
  }
}
