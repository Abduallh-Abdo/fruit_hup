import 'package:flutter/material.dart';
import 'package:fruit_hup/core/utils/app_text_styles.dart';

class OrDivider extends StatelessWidget {
  const OrDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(child: Divider(color: Color(0xffdddfdf))),

        SizedBox(width: 20),
        Text('او', style: AppTextStyles.semiBold16),
        SizedBox(width: 20),
        Expanded(child: Divider(color: Color(0xffdddfdf))),
      ],
    );
  }
}
