import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import '../utils/app_colors.dart';
import '../utils/app_text_styles.dart';

class DontHaveAccountWidget extends StatelessWidget {
  const DontHaveAccountWidget({
    super.key,
    required this.textAction,
    required this.text,
    required this.onTap,
  });
  final String textAction;
  final String text;
  final void Function() onTap;
  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
        text: text,
        style: AppTextStyles.semiBold16.copyWith(color: Colors.grey),
        children: [
          const TextSpan(text: ' '),

          TextSpan(
            recognizer: TapGestureRecognizer()..onTap = onTap,
            text: textAction,
            style: AppTextStyles.semiBold16.copyWith(
              color: AppColors.primaryColor,
            ),
          ),
        ],
      ),
    );
  }
}
