import 'package:flutter/material.dart';
import 'package:fruit_hup/features/checkout/presentation/widgets/shipping_item.dart';

class ShippingSection extends StatefulWidget {
  const ShippingSection({super.key});

  @override
  State<ShippingSection> createState() => _ShippingSectionState();
}

class _ShippingSectionState extends State<ShippingSection> {
  int isSelected = -1;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ShippingItem(
          onTap: () {
            isSelected = 0;
            setState(() {});
          },
          isSelected: isSelected == 0,
          title: 'الدفع عند الاستلام',
          subtitle: 'التسليم من المكان',
          price: '40 جنيه',
        ),
        const SizedBox(height: 8),
        ShippingItem(
          onTap: () {
            isSelected = 1;
            setState(() {});
          },
          isSelected: isSelected == 1,
          title: 'الدفع الاونلاين',
          subtitle: 'يرجي تحديد طريقه الدفع',
          price: 'مجاني',
        ),
      ],
    );
  }
}
