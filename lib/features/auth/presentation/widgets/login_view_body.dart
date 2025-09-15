import 'package:flutter/material.dart';
import 'package:fruit_hup/core/utils/constants.dart';
import 'package:fruit_hup/core/widgets/custom_button.dart';

import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/app_text_styles.dart';
import '../../../../core/widgets/custom_text_form_field.dart';

class LoginViewBody extends StatelessWidget {
  const LoginViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: KHorizontalPadding),
      child: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 24),

            const CustomTextFormField(
              hintText: 'البريد الالكتروني',
              textInputType: TextInputType.emailAddress,
            ),
            const SizedBox(height: 16),
            const CustomTextFormField(
              hintText: 'كلمة المرور',
              textInputType: TextInputType.visiblePassword,
              suffixIcon: Icon(
                Icons.remove_red_eye,
                color: AppColors.hintTextColor,
              ),
            ),
            const SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  'نسيت كلمة المرور؟',
                  style: AppTextStyles.semiBold13.copyWith(
                    color: AppColors.lightPrimaryColor,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 33),
            CustomButton(onPressed: () {}, text: 'تسجيل الدخول'),
            const SizedBox(height: 33),
            Text.rich(
              TextSpan(
                text: 'لا تمتلك حساب؟ ',
                style: AppTextStyles.semiBold16.copyWith(color: Colors.grey),
                children: [
                  TextSpan(
                    text: ' قم بإنشاء حساب',
                    style: AppTextStyles.semiBold16.copyWith(
                      color: AppColors.primaryColor,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
