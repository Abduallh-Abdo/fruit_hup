import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../utils/app_colors.dart';
import '../utils/assets_manager.dart';

class CustomCheckBox extends StatelessWidget {
  const CustomCheckBox({
    super.key,
    required this.isChecked,
    required this.onChanged,
  });
  final bool isChecked;
  final ValueChanged<bool> onChanged;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onChanged(!isChecked);
      },
      child: AnimatedContainer(
        width: 24,
        height: 24,
        duration: const Duration(milliseconds: 100),
        decoration: BoxDecoration(
          color: isChecked ? AppColors.primaryColor : Colors.transparent,
          borderRadius: BorderRadius.circular(6),
          border: Border.all(
            color: isChecked ? Colors.transparent : const Color(0xffdddfdf),
            width: 1.5,
          ),
        ),
        child: isChecked
            ? Padding(
                padding: const EdgeInsets.all(4),
                child: SvgPicture.asset(Assets.imagesCheckIcon),
              )
            : const SizedBox(),
      ),
    );
  }
}
