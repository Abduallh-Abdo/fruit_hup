import 'package:flutter/material.dart';
import 'package:fruit_hup/core/utils/app_text_styles.dart';

class InActiveStepItem extends StatelessWidget {
  const InActiveStepItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const CircleAvatar(
          radius: 10,
          backgroundColor: Color(0xffF2F3F3),
          child: Text('2', style: AppTextStyles.semiBold13),
        ),
        const SizedBox(width: 4),
        Text(
          'الشحن',
          style: AppTextStyles.semiBold13.copyWith(
            color: const Color(0xffAAAAAA),
          ),
        ),
      ],
    );
  }
}
