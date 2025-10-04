import 'package:flutter/material.dart';
import 'package:fruit_hup/core/widgets/custom_text_form_field.dart';

class AddressInputSection extends StatelessWidget {
  const AddressInputSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        CustomTextFormField(
          hintText: 'الاسم كامل',
          textInputType: TextInputType.text,
        ),
        SizedBox(height: 8),
        CustomTextFormField(
          hintText: 'البريد الإلكتروني',
          textInputType: TextInputType.text,
        ),
        SizedBox(height: 8),
        CustomTextFormField(
          hintText: 'العنوان',
          textInputType: TextInputType.text,
        ),
        SizedBox(height: 8),
        CustomTextFormField(
          hintText: 'المدينه',
          textInputType: TextInputType.text,
        ),
        SizedBox(height: 8),
        CustomTextFormField(
          hintText: 'رقم الطابق , رقم الشقه ..',
          textInputType: TextInputType.text,
        ),
        SizedBox(height: 8),
        CustomTextFormField(
          hintText: 'رقم الهاتف',
          textInputType: TextInputType.number,
        ),
        SizedBox(height: 8),
      ],
    );
  }
}
