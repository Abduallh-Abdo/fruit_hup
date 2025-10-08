import 'package:flutter/material.dart';
import 'package:fruit_hup/features/checkout/presentation/widgets/shipping_item.dart';
import 'package:provider/provider.dart';

import '../../domain/entities/order_input_entity.dart';

class ShippingSection extends StatefulWidget {
  const ShippingSection({super.key});

  @override
  State<ShippingSection> createState() => _ShippingSectionState();
}

class _ShippingSectionState extends State<ShippingSection>
    with AutomaticKeepAliveClientMixin {
  int isSelected = -1;
  @override
  Widget build(BuildContext context) {
    super.build(context);
    final orderEntity = context.read<OrderInputEntity>();
    return Column(
      children: [
        const SizedBox(height: 16),
        ShippingItem(
          onTap: () {
            isSelected = 0;
            setState(() {});
            orderEntity.payWithCash = true;
          },
          isSelected: isSelected == 0,
          title: 'الدفع عند الاستلام',
          subtitle: 'التسليم من المكان',
          price: '${(orderEntity.cartEntity.getTotalPrice() + 40)} جنيه',
        ),
        const SizedBox(height: 8),
        ShippingItem(
          onTap: () {
            isSelected = 1;
            setState(() {});
            orderEntity.payWithCash = false;
          },
          isSelected: isSelected == 1,
          title: 'الدفع الاونلاين',
          subtitle: 'يرجي تحديد طريقه الدفع',
          price: '${orderEntity.cartEntity.getTotalPrice()} جنيه',
        ),
      ],
    );
  }

  @override
  bool get wantKeepAlive => true;
}
