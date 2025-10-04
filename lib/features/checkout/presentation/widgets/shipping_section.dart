import 'package:flutter/material.dart';
import 'package:fruit_hup/features/checkout/presentation/widgets/shipping_item.dart';

class ShippingSection extends StatelessWidget {
  const ShippingSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        ShippingItem(
          isSelected: false,
          title: 'الدفع عند الاستلام',
          subtitle: 'التسليم من المكان',
          price: '40 جنيه',
        ),
        SizedBox(height: 8),
        ShippingItem(
          isSelected: true,
          title: 'الدفع الاونلاين',
          subtitle: 'يرجي تحديد طريقه الدفع',
          price: 'مجاني',
        ),
      ],
    );
  }
}
