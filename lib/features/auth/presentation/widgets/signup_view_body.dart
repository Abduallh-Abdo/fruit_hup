import 'package:flutter/material.dart';
import 'package:fruit_hup/core/helper/extensions/navigations.dart';
import 'package:fruit_hup/core/utils/constants.dart';
import 'package:fruit_hup/core/widgets/custom_button.dart';
import 'package:fruit_hup/core/widgets/terms_condtions.dart';

import '../../../../core/utils/app_colors.dart';
import '../../../../core/widgets/custom_text_form_field.dart';
import '../../../../core/widgets/dont_have_account_widget.dart';

class SignupViewBody extends StatelessWidget {
  const SignupViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: KHorizontalPadding),
        child: Column(
          children: [
            const SizedBox(height: 24),
            const CustomTextFormField(
              hintText: 'الاسم كامل',
              textInputType: TextInputType.name,
            ),
            const SizedBox(height: 16),
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
            const TermsCondtions(),
            const SizedBox(height: 30),
            CustomButton(onPressed: () {}, text: 'انشاء حساب جديد'),
            const SizedBox(height: 26),
             DontHaveAccountWidget(
              text: 'تمتلك حساب بالفعل؟',
              textAction: ' تسجيل الدخول',
              onTap: () {
context.pop();
              },
            ),
          ],
        ),
      ),
    );
  }
}
