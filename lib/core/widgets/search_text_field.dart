import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../utils/app_colors.dart';
import '../utils/app_text_styles.dart';
import '../utils/assets_manager.dart';

class SearchTextField extends StatelessWidget {
  const SearchTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Color(0x0A000000),
            spreadRadius: 0,
            blurRadius: 9,
            offset: Offset(0, 2),
          ),
        ],
      ),
      child: TextField(
        keyboardType: TextInputType.text,
        decoration: InputDecoration(
          prefixIcon: SizedBox(
            width: 20,

            child: Center(child: SvgPicture.asset(Assets.imagesSearchIcon)),
          ),
          suffixIcon: SizedBox(
            width: 20,

            child: Center(child: SvgPicture.asset(Assets.imagesFilterIcon)),
          ),
          hintText: 'ابحث عن.......',
          hintStyle: AppTextStyles.bold13.copyWith(
            color: AppColors.hintTextColor,
          ),
          filled: true,
          fillColor: Colors.white,
          border: buildBorder(),
          enabledBorder: buildBorder(),
          focusedBorder: buildBorder(),
        ),
      ),
    );
  }

  OutlineInputBorder buildBorder() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(4),

      borderSide: const BorderSide(color: Colors.white, width: 1),
    );
  }
}
