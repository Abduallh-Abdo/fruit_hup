import 'package:flutter/material.dart';
import 'package:fruit_hup/features/checkout/domain/entities/order_input_entity.dart';
import 'package:provider/provider.dart';

import '../../../../core/utils/app_text_styles.dart';
import 'payment_item.dart';

class OrderSummryWidget extends StatelessWidget {
  const OrderSummryWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final orderEntity = context.read<OrderInputEntity>();
    return PaymentItem(
      title: 'ملخص الطلب :',
      child: Column(
        children: [
          Row(
            children: [
              Text(
                'المجموع الفرعي :',
                style: AppTextStyles.regular13.copyWith(
                  color: const Color(0xff4E5556),
                ),
              ),
              const Spacer(),
              Text(
                '${orderEntity.cartEntity.getTotalPrice()} جنيه',
                style: AppTextStyles.semiBold16,
              ),
            ],
          ),
          const SizedBox(height: 8),
          Row(
            children: [
              Text(
                'التوصيل  :',
                style: AppTextStyles.regular13.copyWith(
                  color: const Color(0xff4E5556),
                ),
              ),
              const Spacer(),
              const Text('30 جنيه', style: AppTextStyles.semiBold13),
              const SizedBox(width: 20),
            ],
          ),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 8.0),
            child: Divider(thickness: 0.5, endIndent: 32, indent: 32),
          ),
          Row(
            children: [
              const Text('الكلي', style: AppTextStyles.bold16),
              const Spacer(),
              Text(
                '${(orderEntity.cartEntity.getTotalPrice() + 30)} جنيه',
                style: AppTextStyles.bold16,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
