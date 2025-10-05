import 'package:flutter/material.dart';
import 'package:fruit_hup/core/widgets/custom_text_form_field.dart';
import 'package:fruit_hup/features/checkout/domain/entities/order_entity.dart';
import 'package:provider/provider.dart' as provider;

class AddressInputSection extends StatelessWidget {
  const AddressInputSection({super.key, required this.valueNotifier});
  final ValueNotifier<AutovalidateMode> valueNotifier;
  @override
  Widget build(BuildContext context) {
    final shippingAddress = context.read<OrderEntity>().shippingAddressEntity;
    final formKey = context.read<GlobalKey<FormState>>();

    return ValueListenableBuilder(
      valueListenable: valueNotifier,
      builder: (context, value, child) {
        return Form(
          key: formKey,
          autovalidateMode: valueNotifier.value,
          child: SingleChildScrollView(
            child: Column(
              children: [
                CustomTextFormField(
                  onSaved: (value) {
                    shippingAddress.name = value;
                  },
                  hintText: 'الاسم كامل',
                  textInputType: TextInputType.text,
                ),
                const SizedBox(height: 8),
                CustomTextFormField(
                  onSaved: (value) {
                    shippingAddress.email = value;
                  },
                  hintText: 'البريد الإلكتروني',
                  textInputType: TextInputType.text,
                ),
                const SizedBox(height: 8),
                CustomTextFormField(
                  onSaved: (value) {
                    shippingAddress.address = value;
                  },
                  hintText: 'العنوان',
                  textInputType: TextInputType.text,
                ),
                const SizedBox(height: 8),
                CustomTextFormField(
                  onSaved: (value) {
                    shippingAddress.city = value;
                  },
                  hintText: 'المدينه',
                  textInputType: TextInputType.text,
                ),
                const SizedBox(height: 8),
                CustomTextFormField(
                  onSaved: (value) {
                    shippingAddress.floor = value;
                  },
                  hintText: 'رقم الطابق , رقم الشقه ..',
                  textInputType: TextInputType.text,
                ),
                const SizedBox(height: 8),
                CustomTextFormField(
                  onSaved: (value) {
                    shippingAddress.phone = value;
                  },
                  hintText: 'رقم الهاتف',
                  textInputType: TextInputType.number,
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
