import 'package:flutter/material.dart';
import 'package:fruit_hup/features/checkout/presentation/widgets/shipping_item.dart';
import 'package:provider/provider.dart';

import '../../domain/entities/order_entity.dart';

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
        const SizedBox(height: 16),
        ShippingItem(
          onTap: () {
            isSelected = 0;
            setState(() {});
          },
          isSelected: isSelected == 0,
          title: 'الدفع عند الاستلام',
          subtitle: 'التسليم من المكان',
          price:
              '${(context.read<OrderEntity>().cartEntity.getTotalPrice() + 40)} جنيه',
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
          price:
              '${context.read<OrderEntity>().cartEntity.getTotalPrice()} جنيه',
        ),
      ],
    );
  }
}
