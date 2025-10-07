import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:fruit_hup/core/widgets/custom_check_box.dart';

import '../utils/app_colors.dart';
import '../utils/app_text_styles.dart';

class TermsCondtions extends StatefulWidget {
  const TermsCondtions({super.key, required this.onChanged});
  final ValueChanged<bool> onChanged;
  @override
  State<TermsCondtions> createState() => _TermsCondtionsState();
}

class _TermsCondtionsState extends State<TermsCondtions> {
  bool isTermsAccepted = false;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: const EdgeInsets.all(0),
      leading: CustomCheckBox(
        isChecked: isTermsAccepted,
        onChanged: (value) {
          isTermsAccepted = value;
          widget.onChanged(value);
          setState(() {});
        },
      ),
      title: Text.rich(
        TextSpan(
          text: 'من خلال إنشاء حساب ، فإنك توافق على',
          style: AppTextStyles.semiBold13.copyWith(color: Colors.grey),
          children: [
            const TextSpan(text: ' '),
            TextSpan(
              recognizer: TapGestureRecognizer()..onTap = () {},
              text: 'الشروط والأحكام الخاصة بنا',
              style: AppTextStyles.semiBold13.copyWith(
                color: AppColors.lightPrimaryColor,
              ),
            ),
            const TextSpan(text: ' '),
          ],
        ),
      ),
    );
  }
}
