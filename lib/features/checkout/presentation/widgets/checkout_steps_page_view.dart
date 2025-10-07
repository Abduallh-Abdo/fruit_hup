import 'package:flutter/material.dart';
import 'package:fruit_hup/features/checkout/presentation/widgets/address_input_section.dart';
import 'package:fruit_hup/features/checkout/presentation/widgets/payment_section.dart';
import 'package:fruit_hup/features/checkout/presentation/widgets/shipping_section.dart';
import 'package:provider/provider.dart';

class CheckoutStepsPageView extends StatelessWidget {
  const CheckoutStepsPageView({super.key, required this.valueNotifier});
  final ValueNotifier<AutovalidateMode> valueNotifier;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 24),
      child: PageView.builder(
        controller: context.read<PageController>(),
        physics: const NeverScrollableScrollPhysics(),
        itemCount: getPages().length,
        itemBuilder: (context, index) {
          return getPages()[index];
        },
      ),
    );
  }

  List<Widget> getPages() => [
    const ShippingSection(),
    AddressInputSection(valueNotifier: valueNotifier),
    const PaymentSection(),
  ];
}
