import 'package:flutter/material.dart';
import 'package:fruit_hup/core/utils/app_text_styles.dart';

class InActiveStepItem extends StatelessWidget {
  const InActiveStepItem({super.key, required this.text, required this.index});
  final String text, index;

  @override
  Widget build(BuildContext context) {
    return Row(      mainAxisAlignment: MainAxisAlignment.center,

      children: [
         CircleAvatar(
          radius: 10,
          backgroundColor: const Color(0xffF2F3F3),
          child: Text(index, style: AppTextStyles.semiBold13),
        ),
        const SizedBox(width: 4),
        Text(
         text,
          style: AppTextStyles.semiBold13.copyWith(
            color: const Color(0xffAAAAAA),
          ),
        ),
      ],
    );
  }
}
