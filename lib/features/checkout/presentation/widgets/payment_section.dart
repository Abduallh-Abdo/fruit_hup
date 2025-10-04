import 'package:flutter/material.dart';
import 'package:fruit_hup/features/checkout/presentation/widgets/order_summry_widget.dart';

import 'order_address_widget.dart';

class PaymentSection extends StatelessWidget {
  const PaymentSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        OrderSummryWidget(),
        OrderAddressWidget(),
      ],
    );
  }
}
