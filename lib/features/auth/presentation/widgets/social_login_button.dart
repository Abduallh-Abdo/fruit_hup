import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fruit_hup/core/utils/app_colors.dart';

import '../../../../core/utils/app_text_styles.dart';

class SocialLoginButton extends StatelessWidget {
  const SocialLoginButton({
    super.key,
    required this.title,
    required this.image,
    required this.onPressed,
  });
  final String title, image;
  final void Function() onPressed;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: TextButton(
        style: TextButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
            side: const BorderSide(color: AppColors.borderSideColor, width: 1),
          ),
        ),
        onPressed: onPressed,
        child: ListTile(
          visualDensity: const VisualDensity(
            horizontal: VisualDensity.minimumDensity,
          ),
          leading: SvgPicture.asset(image),
          title: Text(title, style: AppTextStyles.semiBold16),
        ),
      ),
    );
  }
}
